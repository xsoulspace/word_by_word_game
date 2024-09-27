import torch
from transformers import (
    AutoTokenizer,
    AutoModelForSequenceClassification,
    Trainer,
    TrainingArguments,
)
from datasets import load_dataset

# Load TinyBERT
model_name = "huawei-noah/TinyBERT_General_4L_312D"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForSequenceClassification.from_pretrained(model_name, num_labels=2)


# Prepare datasets
def prepare_dataset(file_path):
    dataset = load_dataset("csv", data_files=file_path)

    def tokenize_function(examples):
        return tokenizer(
            examples["WORD"],
            examples["DEFINITION"],
            truncation=True,
            padding="max_length",
        )

    tokenized_dataset = dataset.map(tokenize_function, batched=True)
    return tokenized_dataset


train_dataset = prepare_dataset("eng_dic.csv")

# Set up training arguments
training_args = TrainingArguments(
    output_dir="./results",
    num_train_epochs=3,
    per_device_train_batch_size=16,
    save_steps=10_000,
    save_total_limit=2,
)

# Create Trainer and train
trainer = Trainer(
    model=model,
    args=training_args,
    train_dataset=train_dataset,
)

trainer.train()

# Save the model
trainer.save_model("./tinybert_finetuned")
