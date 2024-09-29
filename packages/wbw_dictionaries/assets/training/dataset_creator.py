import torch
from transformers import (
    M2M100ForConditionalGeneration,
    M2M100Tokenizer,
    XLMRobertaTokenizer,
    XLMRobertaModel,
    BertTokenizer,
    BertModel,
)
from datasets import Dataset
import pandas as pd
from tqdm import tqdm

# Define the languages we want to work with
LANGUAGES = ["en", "fr", "de", "es", "it", "ru"]

# Load models
print("Loading models...")
m2m_model = M2M100ForConditionalGeneration.from_pretrained("facebook/m2m100_418M")
m2m_tokenizer = M2M100Tokenizer.from_pretrained("facebook/m2m100_418M")

xlm_tokenizer = XLMRobertaTokenizer.from_pretrained("xlm-roberta-base")
xlm_model = XLMRobertaModel.from_pretrained("xlm-roberta-base")

bert_tokenizer = BertTokenizer.from_pretrained("bert-base-multilingual-cased")
bert_model = BertModel.from_pretrained("bert-base-multilingual-cased")


# Helper functions
def translate_word(word, src_lang, tgt_lang):
    m2m_tokenizer.src_lang = src_lang
    encoded = m2m_tokenizer(word, return_tensors="pt")
    generated_tokens = m2m_model.generate(
        **encoded, forced_bos_token_id=m2m_tokenizer.get_lang_id(tgt_lang)
    )
    return m2m_tokenizer.batch_decode(generated_tokens, skip_special_tokens=True)[0]


def get_synonyms(word, language="en"):
    inputs = xlm_tokenizer(word, return_tensors="pt")
    with torch.no_grad():
        outputs = xlm_model(**inputs)
    word_embedding = outputs.last_hidden_state.mean(dim=1)

    similar_words = []
    for w in df["WORD"].tolist():
        if w != word:
            inputs = xlm_tokenizer(w, return_tensors="pt")
            with torch.no_grad():
                outputs = xlm_model(**inputs)
            w_embedding = outputs.last_hidden_state.mean(dim=1)
            similarity = torch.cosine_similarity(word_embedding, w_embedding)
            if similarity > 0.5:
                similar_words.append(w)

    return ", ".join(similar_words[:3])


def get_etymology(word):
    inputs = bert_tokenizer(word, return_tensors="pt")
    with torch.no_grad():
        outputs = bert_model(**inputs)
    word_embedding = outputs.last_hidden_state.mean(dim=1)

    potential_roots = []
    for lang in LANGUAGES:
        w = translate_word(word, "en", lang) if lang != "en" else word
        inputs = bert_tokenizer(w, return_tensors="pt")
        with torch.no_grad():
            outputs = bert_model(**inputs)
        w_embedding = outputs.last_hidden_state.mean(dim=1)
        similarity = torch.cosine_similarity(word_embedding, w_embedding)
        if similarity > 0.7:
            potential_roots.append(f"{w} ({lang})")

    return ", ".join(potential_roots[:2])


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


# Load the dataset
print("Loading dataset...")
df = pd.read_csv("packages/wbw_dictionaries/assets/training/eng_dic_small.csv")

# Process the dataset
print("Processing dataset...")
processed_data = []

for _, row in tqdm(df.iterrows(), total=len(df)):
    word = row["WORD"]
    word_type = row["WORDTYPE"]
    definition = row["DEFINITION"]

    translations = {
        lang: translate_word(word, "en", lang) for lang in LANGUAGES if lang != "en"
    }

    processed_data.append(
        {
            "WORD": word,
            "TYPE": word_type,
            "DEFINITION": definition,
            "SYNONYMS": get_synonyms(word),
            "TRANSLATED": ", ".join(
                [f"{lang.upper()}: {trans}" for lang, trans in translations.items()]
            ),
            "ETYMOLOGY": get_etymology(word),
        }
    )

# Create a DataFrame
df_processed = pd.DataFrame(processed_data)

# Save to CSV
df_processed.to_csv("processed_multilingual_dataset.csv", index=False)

print("Dataset created and saved as 'processed_multilingual_dataset.csv'")

# Example of using context for translation
word = "bank"
context = "I'm going to the bank to deposit money"
for lang in LANGUAGES:
    if lang != "en":
        contextual_translation = translate_with_context(word, context, "en", lang)
        print(
            f"Contextual translation of '{word}' to {lang.upper()} in context '{context}': {contextual_translation}"
        )
