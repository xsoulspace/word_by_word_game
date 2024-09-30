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

# Use GPU if available
device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

# Define batch size
BATCH_SIZE = 32

# Load M2M100 model for translations and definitions
print("Loading M2M100 model...")
m2m_model = M2M100ForConditionalGeneration.from_pretrained("facebook/m2m100_418M").to(
    device
)
m2m_tokenizer = M2M100Tokenizer.from_pretrained("facebook/m2m100_418M")


def translate_batch(words, contexts, src_lang, tgt_lang):
    m2m_tokenizer.src_lang = src_lang

    full_texts = [
        f"Translate '{word}'. Context: {context}"
        for word, context in zip(words, contexts)
    ]
    encoded = m2m_tokenizer(
        full_texts, return_tensors="pt", padding=True, truncation=True, max_length=512
    ).to(device)

    with torch.no_grad():
        generated_tokens = m2m_model.generate(
            **encoded,
            forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang),
            max_length=128,
        )

    translated_full = m2m_tokenizer.batch_decode(
        generated_tokens, skip_special_tokens=True
    )
    return [
        trans.split()[0] for trans in translated_full
    ]  # Assuming the translation is the first word


def get_definitions_batch(words, contexts, tgt_lang):
    m2m_tokenizer.src_lang = "en"
    full_texts = [
        f"Define '{word}' in {tgt_lang}. Context: {context}"
        for word, context in zip(words, contexts)
    ]
    encoded = m2m_tokenizer(
        full_texts, return_tensors="pt", padding=True, truncation=True, max_length=512
    ).to(device)

    with torch.no_grad():
        generated_tokens = m2m_model.generate(
            **encoded,
            forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang),
            max_length=128,
        )

    definitions = m2m_tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)
    return [
        definition.split(": ", 1)[-1] if ": " in definition else definition
        for definition in definitions
    ]


# Define the languages we want to work with
LANGUAGES = ["en", "ru", "it"]

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

# Process the dataset in batches
print("Processing dataset...")
for i in tqdm(range(0, len(df), BATCH_SIZE)):
    batch = df.iloc[i : i + BATCH_SIZE]
    en_words = batch["WORD"].tolist()
    en_definitions = batch["DEFINITION"].tolist()

    for lang in LANGUAGES:
        if lang != "en":
            translated_words = translate_batch(en_words, en_definitions, "en", lang)
            translated_definitions = get_definitions_batch(
                translated_words, en_definitions, lang
            )

            for en_word, trans_word, trans_def in zip(
                en_words, translated_words, translated_definitions
            ):
                file_writers[lang]["writer"].writerow([en_word, trans_word, trans_def])

# Close all files
for lang in LANGUAGES:
    if lang != "en":
        file_writers[lang]["file"].close()

print("Dataset processing complete. CSV files created for each language.")
