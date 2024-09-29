import torch
from transformers import AutoTokenizer, AutoModelForCausalLM
import pandas as pd
from tqdm import tqdm

# Define the languages we want to work with
LANGUAGES = ["en", "ru", "it"]

# Load models
print("Loading models...")
model = AutoModelForCausalLM.from_pretrained(
    "google/gemma-2-9b-it", device_map="auto", torch_dtype=torch.bfloat16
)
tokenizer = AutoTokenizer.from_pretrained("google/gemma-2-9b-it")


def translate_with_context(word, context, src_lang, tgt_lang):
    prompt = f"Translate only the word '{word}' from {src_lang} to {tgt_lang} considering this context: {context}"
    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)
    outputs = model.generate(**inputs, max_new_tokens=10)
    translated_full = tokenizer.decode(outputs[0], skip_special_tokens=True)
    # Extract only the translated word
    return translated_full.split()[-1]


def get_definition_with_context(word, context, tgt_lang):
    prompt = f"Define '{word}' in {tgt_lang} considering this context: {context}"
    inputs = tokenizer(prompt, return_tensors="pt").to(model.device)
    outputs = model.generate(**inputs, max_new_tokens=50)
    definition = tokenizer.decode(outputs[0], skip_special_tokens=True)
    # Remove any introductory phrases
    return definition.split(": ", 1)[-1]


# Load the dataset
print("Loading dataset...")
df = pd.read_csv("eng_dic_small.csv")

# Process the dataset
print("Processing dataset...")
processed_data = []

for _, row in tqdm(df.iterrows(), total=len(df)):
    word = row["WORD"]
    word_type = row["WORDTYPE"]
    en_definition = row["DEFINITION"]

    definitions = {
        lang: (
            en_definition
            if lang == "en"
            else get_definition_with_context(word, en_definition, lang)
        )
        for lang in LANGUAGES
    }

    translations = {
        lang: translate_with_context(word, en_definition, "en", lang)
        for lang in LANGUAGES
        if lang != "en"
    }

    processed_data.append(
        {
            "WORD(EN)": word,
            "TYPE(EN)": word_type,
            "DEFINITIONS": ";".join(
                [f"{lang}: {def_}" for lang, def_ in definitions.items()]
            ),
            "TRANSLATIONS": ",".join(
                [f"{lang}:{trans}" for lang, trans in translations.items()]
            ),
        }
    )

# Create a DataFrame
df_processed = pd.DataFrame(processed_data)

# Save to CSV
df_processed.to_csv("final_multilingual_dataset.csv", index=False)

print("Dataset created and saved as 'final_multilingual_dataset.csv'")
