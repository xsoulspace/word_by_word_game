import torch
from torch import nn
from transformers import (
    MobileBertForSequenceClassification,
    MobileBertTokenizer,
    MobileBertConfig,
)
from datasets import Dataset
import pandas as pd
from sklearn.model_selection import train_test_split
from torch.nn.utils import prune
from torch.ao.quantization import quantize_dynamic, prepare_qat, convert
import numpy as np

# Define the languages we want to work with
LANGUAGES = ["en", "fr", "de", "es", "it", "ru"]

# Load the dataset
print("Loading dataset...")
df = pd.read_csv("processed_multilingual_dataset.csv")


# Define a custom multi-task model
class MultiTaskMobileBERT(nn.Module):
    def __init__(self, num_labels, num_languages):
        super().__init__()
        self.mobilebert = MobileBertForSequenceClassification.from_pretrained(
            "google/mobilebert-uncased"
        )
        self.classifier = nn.Linear(self.mobilebert.config.hidden_size, num_labels)
        self.translation = nn.Linear(
            self.mobilebert.config.hidden_size,
            num_languages * self.mobilebert.config.vocab_size,
        )
        self.num_languages = num_languages

    def forward(self, input_ids, attention_mask, task_type):
        outputs = self.mobilebert(input_ids=input_ids, attention_mask=attention_mask)
        hidden_states = outputs.last_hidden_state[
            :, 0, :
        ]  # Use [CLS] token representation

        if task_type == "classification":
            return self.classifier(hidden_states)
        elif task_type == "translation":
            return self.translation(hidden_states).view(
                -1, self.num_languages, self.mobilebert.config.vocab_size
            )


# Prepare the dataset for fine-tuning
def prepare_dataset(df):
    texts, labels, task_types = [], [], []
    for _, row in df.iterrows():
        word = row["WORD"]

        # Task 1: Multilingual definition
        for lang in LANGUAGES:
            texts.append(f"Define in {lang}: {word}")
            labels.append(0)  # 0 for definition task
            task_types.append("classification")

        # Task 2: Word verification
        texts.append(f"Verify: {word}")
        labels.append(1)  # 1 for verification task
        task_types.append("classification")

        # Task 3: Synonyms
        texts.append(f"Synonyms: {word}")
        labels.append(2)  # 2 for synonyms task
        task_types.append("classification")

        # Task 4: Translation
        for tgt_lang in LANGUAGES:
            if tgt_lang != "en":
                texts.append(f"Translate to {tgt_lang}: {word}")
                labels.append(LANGUAGES.index(tgt_lang))  # Use language index as label
                task_types.append("translation")

    return texts, labels, task_types


texts, labels, task_types = prepare_dataset(df)

# Split the dataset
train_texts, val_texts, train_labels, val_labels, train_task_types, val_task_types = (
    train_test_split(texts, labels, task_types, test_size=0.1)
)

# Load the tokenizer and model
tokenizer = MobileBertTokenizer.from_pretrained("google/mobilebert-uncased")
student_model = MultiTaskMobileBERT(num_labels=3, num_languages=len(LANGUAGES))
teacher_model = MultiTaskMobileBERT(num_labels=3, num_languages=len(LANGUAGES))


# Tokenize the datasets
def tokenize_and_encode(examples):
    return tokenizer(examples, padding="max_length", truncation=True, max_length=128)


train_dataset = Dataset.from_dict(
    {"text": train_texts, "label": train_labels, "task_type": train_task_types}
).map(lambda examples: tokenize_and_encode(examples["text"]))

val_dataset = Dataset.from_dict(
    {"text": val_texts, "label": val_labels, "task_type": val_task_types}
).map(lambda examples: tokenize_and_encode(examples["text"]))


# Knowledge Distillation
def knowledge_distillation_loss(
    student_logits, teacher_logits, labels, temperature=2.0
):
    kd_loss = nn.KLDivLoss(reduction="batchmean")(
        nn.functional.log_softmax(student_logits / temperature, dim=1),
        nn.functional.softmax(teacher_logits / temperature, dim=1),
    ) * (temperature**2)
    ce_loss = nn.CrossEntropyLoss()(student_logits, labels)
    return 0.5 * kd_loss + 0.5 * ce_loss


# Pruning
def prune_model(model, amount=0.3):
    for name, module in model.named_modules():
        if isinstance(module, nn.Linear):
            prune.l1_unstructured(module, name="weight", amount=amount)
    return model


# Quantization-Aware Training
def prepare_for_qat(model):
    model.qconfig = torch.ao.quantization.get_default_qat_qconfig("fbgemm")
    model_prepared = prepare_qat(model)
    return model_prepared


# Training loop with Knowledge Distillation, Pruning, and QAT
optimizer = torch.optim.AdamW(student_model.parameters(), lr=5e-5)
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
student_model.to(device)
teacher_model.to(device)

# Prepare for QAT
student_model = prepare_for_qat(student_model)

for epoch in range(3):  # Number of epochs
    for batch in train_dataset.shuffle().batch(16):
        input_ids = torch.tensor(batch["input_ids"]).to(device)
        attention_mask = torch.tensor(batch["attention_mask"]).to(device)
        labels = torch.tensor(batch["label"]).to(device)
        task_types = batch["task_type"]

        optimizer.zero_grad()

        student_outputs = student_model(input_ids, attention_mask, task_types[0])
        with torch.no_grad():
            teacher_outputs = teacher_model(input_ids, attention_mask, task_types[0])

        loss = knowledge_distillation_loss(student_outputs, teacher_outputs, labels)
        loss.backward()
        optimizer.step()

    # Prune the model after each epoch
    student_model = prune_model(student_model)

# Convert the model for QAT
student_model = convert(student_model)

# Save the quantized model
torch.save(
    student_model.state_dict(), "quantized_pruned_distilled_multitask_mobilebert.pth"
)

# Export to ONNX
print("Exporting to ONNX...")
dummy_input = tokenizer("This is a test", return_tensors="pt")
input_names = ["input_ids", "attention_mask", "task_type"]
output_names = ["output"]

torch.onnx.export(
    student_model,
    (dummy_input.input_ids, dummy_input.attention_mask, "classification"),
    "optimized_multitask_mobilebert.onnx",
    input_names=input_names,
    output_names=output_names,
    dynamic_axes={
        "input_ids": {0: "batch_size", 1: "sequence"},
        "attention_mask": {0: "batch_size", 1: "sequence"},
        "output": {0: "batch_size"},
    },
    opset_version=12,
)

print("Model training, optimization, and export completed successfully.")
