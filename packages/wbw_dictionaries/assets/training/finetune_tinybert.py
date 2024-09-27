import torch
from transformers import (
    AutoTokenizer,
    AutoModelForSequenceClassification,
    Trainer,
    TrainingArguments,
)
from datasets import Dataset, DatasetDict
import pandas as pd

# Check if MPS is available and set it as the default device
if torch.backends.mps.is_available():
    device = torch.device("mps")
    print("Using MPS (Apple Silicon GPU)")
else:
    device = torch.device("cpu")
    print("MPS not available, using CPU")

model_name = "huawei-noah/TinyBERT_General_4L_312D"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForSequenceClassification.from_pretrained(model_name, num_labels=1).to(
    device
)


def prepare_dataset(file_path):
    df = pd.read_csv(file_path, header=None, names=["WORD", "WORDTYPE", "DEFINITION"])
    print(f"Columns in the dataset: {df.columns.tolist()}")
    print(f"Sample data:\n{df.head()}")

    if "WORD" not in df.columns or "DEFINITION" not in df.columns:
        raise ValueError("The CSV file must contain 'WORD' and 'DEFINITION' columns")

    dataset = Dataset.from_pandas(df)

    def tokenize_function(examples):
        words = examples["WORD"]
        word_types = examples["WORDTYPE"]
        definitions = examples["DEFINITION"]

        words = [str(w) for w in words]
        word_types = [str(wt) for wt in word_types]
        definitions = [str(d) for d in definitions]

        combined_text = [
            f"{w} ({wt}): {d}" for w, wt, d in zip(words, word_types, definitions)
        ]

        return tokenizer(
            combined_text,
            truncation=True,
            padding="max_length",
            max_length=512,
        )

    tokenized_dataset = dataset.map(
        tokenize_function, batched=True, remove_columns=dataset.column_names
    )
    tokenized_dataset = tokenized_dataset.add_column(
        "labels", [0.0] * len(tokenized_dataset)
    )

    split_dataset = tokenized_dataset.train_test_split(test_size=0.1)

    print(f"Train dataset size: {len(split_dataset['train'])}")
    print(f"Eval dataset size: {len(split_dataset['test'])}")
    print(f"Sample input: {split_dataset['train'][0]}")

    return split_dataset


try:
    k_small_dataset_path = "eng_dic_small.csv"
    k_large_dataset_path = "eng_dic.csv"
    dataset = prepare_dataset(k_small_dataset_path)

    training_args = TrainingArguments(
        output_dir="./results",
        num_train_epochs=3,
        per_device_train_batch_size=16,
        per_device_eval_batch_size=64,
        evaluation_strategy="epoch",
        save_strategy="epoch",
        save_total_limit=2,
        logging_dir="./logs",
        logging_steps=500,
        load_best_model_at_end=True,
        metric_for_best_model="loss",
        no_cuda=True,  # Disable CUDA to use MPS
    )

    trainer = Trainer(
        model=model,
        args=training_args,
        train_dataset=dataset["train"],
        eval_dataset=dataset["test"],
    )

    trainer.train()
    trainer.save_model("./tinybert_finetuned")

    # Move model to CPU for ONNX export
    model.to("cpu")
    dummy_input = tokenizer(
        "Example word (type): definition",
        return_tensors="pt",
        padding="max_length",
        max_length=512,
        truncation=True,
    )
    torch.onnx.export(
        model,
        (dummy_input.input_ids, dummy_input.attention_mask),
        "tinybert_finetuned.onnx",
        input_names=["input_ids", "attention_mask"],
        output_names=["logits"],
        dynamic_axes={
            "input_ids": {0: "batch_size", 1: "sequence"},
            "attention_mask": {0: "batch_size", 1: "sequence"},
            "logits": {0: "batch_size"},
        },
        opset_version=14,  # Updated to version 14
        do_constant_folding=True,
        export_params=True,
    )
    print("Model training and export completed successfully.")

except Exception as e:
    print(f"An error occurred: {str(e)}")
