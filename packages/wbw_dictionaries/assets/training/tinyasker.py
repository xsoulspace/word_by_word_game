import onnxruntime as ort
import numpy as np
import pandas as pd
from transformers import AutoTokenizer

# Load the tokenizer from the fine-tuning script
model_name = "huawei-noah/TinyBERT_General_4L_312D"
tokenizer = AutoTokenizer.from_pretrained(model_name)

# Load the ONNX model
session = ort.InferenceSession("tinybert_finetuned.onnx")

# Load the dictionary
word_definitions = pd.read_csv("eng_dic_small.csv")[["WORD", "DEFINITION"]]


def tokenize_and_pad(word, max_length=512):
    tokens = tokenizer(
        word,
        padding="max_length",
        max_length=max_length,
        truncation=True,
        return_tensors="np",
    )
    return tokens["input_ids"][0].astype(np.int64)  # Ensure int64 type


def get_definition(word):
    # Tokenize the input word with a specified max_length
    inputs = tokenizer(
        word, return_tensors="np", padding=True, truncation=True, max_length=512
    )

    # Prepare input data and ensure int64 type
    input_ids = inputs["input_ids"].astype(np.int64)
    attention_mask = inputs["attention_mask"].astype(np.int64)

    # Create input dictionary
    input_dict = {"input_ids": input_ids, "attention_mask": attention_mask}

    # Run inference
    outputs = session.run(None, input_dict)

    # Get the output (assuming it's a single value)
    output_value = outputs[0][0][0]  # Extract the single value

    # Tokenize and pad all words in the dictionary
    tokenized_words = np.array([tokenize_and_pad(w) for w in word_definitions["WORD"]])

    # Calculate similarities (using a simple difference metric)
    word_outputs = np.array(
        [
            session.run(
                None,
                {
                    "input_ids": w.reshape(1, -1),
                    "attention_mask": np.ones((1, 512), dtype=np.int64),
                },
            )[0][0][0]
            for w in tokenized_words
        ]
    )
    similarities = -np.abs(
        word_outputs - output_value
    )  # Negative absolute difference (higher is more similar)

    most_similar_index = np.argmax(similarities)

    # Get the definition of the most similar word
    definition = word_definitions.iloc[most_similar_index]["DEFINITION"]
    return definition


# Example usage
random_word = "cognisor"  # Replace with your random word
definition = get_definition(random_word)
print(f"Definition of '{random_word}': {definition}")
