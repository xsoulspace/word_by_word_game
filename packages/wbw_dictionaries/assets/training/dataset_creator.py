import torch
from transformers import M2M100ForConditionalGeneration, M2M100Tokenizer
import pandas as pd
from tqdm import tqdm

# Define the languages we want to work with
LANGUAGES = ["en", "ru", "it"]  # Reduced to requested languages

# Load models
print("Loading models...")
m2m_model = M2M100ForConditionalGeneration.from_pretrained("facebook/m2m100_418M")
m2m_tokenizer = M2M100Tokenizer.from_pretrained("facebook/m2m100_418M")


def translate_with_context(word, context, src_lang, tgt_lang):
    m2m_tokenizer.src_lang = src_lang
    full_text = f"{word} | {context}"
    encoded = m2m_tokenizer(full_text, return_tensors="pt")
    generated_tokens = m2m_model.generate(
        **encoded, forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang)
    )
    translated_full = m2m_tokenizer.batch_decode(
        generated_tokens, skip_special_tokens=True
    )[0]
    return translated_full.split("|")[0].strip()


def get_definition_with_context(word, context, tgt_lang):
    m2m_tokenizer.src_lang = "en"
    full_text = f"Define '{word}' in context: {context}"
    encoded = m2m_tokenizer(full_text, return_tensors="pt")
    generated_tokens = m2m_model.generate(
        **encoded, forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang)
    )
    return m2m_tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)[0]


# Load the dataset
print("Loading dataset...")
df = pd.read_csv("packages/wbw_dictionaries/assets/training/eng_dic_small.csv")

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
