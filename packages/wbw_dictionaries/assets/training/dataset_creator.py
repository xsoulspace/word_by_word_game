import torch
from transformers import (
    M2M100ForConditionalGeneration,
    M2M100Tokenizer,
    AutoModelForSeq2SeqLM,
    AutoTokenizer,
)
import pandas as pd
from tqdm import tqdm
import csv
import os

# Define the languages we want to work with
LANGUAGES = ["en", "ru", "it"]

# Load M2M100 model for definitions
print("Loading M2M100 model...")
m2m_model = M2M100ForConditionalGeneration.from_pretrained("facebook/m2m100_418M")
m2m_tokenizer = M2M100Tokenizer.from_pretrained("facebook/m2m100_418M")

# Dictionary to store loaded OPUS-MT models
opus_models = {}
opus_tokenizers = {}


def load_opus_model(src_lang, tgt_lang):
    model_name = f"Helsinki-NLP/opus-mt-{src_lang}-{tgt_lang}"
    if (src_lang, tgt_lang) not in opus_models:
        opus_models[(src_lang, tgt_lang)] = AutoModelForSeq2SeqLM.from_pretrained(
            model_name
        )
        opus_tokenizers[(src_lang, tgt_lang)] = AutoTokenizer.from_pretrained(
            model_name
        )
    return opus_models[(src_lang, tgt_lang)], opus_tokenizers[(src_lang, tgt_lang)]


def translate_with_context(word, context, src_lang, tgt_lang):
    model, tokenizer = load_opus_model(src_lang, tgt_lang)

    full_text = f"{word} ||| {context}"
    encoded = tokenizer(full_text, return_tensors="pt", truncation=True, max_length=512)
    generated_tokens = model.generate(**encoded)
    translated_full = tokenizer.decode(generated_tokens[0], skip_special_tokens=True)

    # Extract only the translated word (assuming it's the first word in the response)
    return translated_full.split()[0]


def get_definition_with_context(word, context, tgt_lang):
    m2m_tokenizer.src_lang = "en"
    full_text = f"Define '{word}' in context: {context}"
    encoded = m2m_tokenizer(full_text, return_tensors="pt")
    generated_tokens = m2m_model.generate(
        **encoded, forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang)
    )
    definition = m2m_tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)[
        0
    ]
    # Remove any introductory phrases
    return definition.split(": ", 1)[-1]


# Load the dataset
print("Loading dataset...")
df = pd.read_csv("eng_dic_small.csv")

# Create a dictionary to store file writers
file_writers = {}

# Open files for each language and create CSV writers
for lang in LANGUAGES:
    if lang != "en":
        filename = f"{lang}_dic.csv"
        file = open(filename, "w", newline="", encoding="utf-8")
        writer = csv.writer(file)
        writer.writerow(["EN_WORD", "WORD", "DEFINITION"])
        file_writers[lang] = {"file": file, "writer": writer}

# Process the dataset
print("Processing dataset...")
for _, row in tqdm(df.iterrows(), total=len(df)):
    en_word = row["WORD"]
    en_definition = row["DEFINITION"]

    for lang in LANGUAGES:
        if lang != "en":
            translated_word = translate_with_context(en_word, en_definition, "en", lang)
            translated_definition = get_definition_with_context(
                en_word, en_definition, lang
            )

            file_writers[lang]["writer"].writerow(
                [en_word, translated_word, translated_definition]
            )

# Close all files
for lang in LANGUAGES:
    if lang != "en":
        file_writers[lang]["file"].close()

print("Dataset processing complete. CSV files created for each language.")
