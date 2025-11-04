import torch
from transformers import AutoTokenizer, AutoModelForSequenceClassification

model_path = "./tinybert_finetuned"
tokenizer = AutoTokenizer.from_pretrained(model_path)
model = AutoModelForSequenceClassification.from_pretrained(model_path)

# Create dummy input
dummy_input = tokenizer("example", return_tensors="pt")

# Export the model
torch.onnx.export(
    model,
    (dummy_input.input_ids, dummy_input.attention_mask),
    "tinybert_finetuned.onnx",
    input_names=["input_ids", "attention_mask"],
    output_names=["output"],
    dynamic_axes={
        "input_ids": {0: "batch_size", 1: "sequence"},
        "attention_mask": {0: "batch_size", 1: "sequence"},
        "output": {0: "batch_size", 1: "sequence"},
    },
    opset_version=12,
)
