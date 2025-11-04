https://www.linkedin.com/posts/akshay-pachaar_gemma-3-270m-fine-tuning-guide-ugcPost-7362120454762844162-kAq4?utm_source=social_share_send&utm_medium=member_desktop_web&rcm=ACoAAB3Z6xkBtNZSnxQLevnM24gluGJf0K7LhE4

Google's new LLM can run on just 0.5 GB RAM.

(let's fine-tune it 100% locally)

Google released Gemma 3 270M, a new model for hyper-efficient local AI!

We'll fine-tune this model and make it very smart at playing chess and predict the next move.

Tech stack:

- Unsloth AI for efficient fine-tuning.
- Hugging Face transformers to run it locally.

Here's how you can do it in 5 easy steps:

1️⃣ Load the model

↳ We start by loading the Gemma 3 270M and its tokenizer using Unsloth.

2️⃣ Define LoRA config

↳ We'll use LoRA for efficient fine-tuning.

↳ To do this, we use Unsloth's PEFT and specify:

- The model
- LoRA low-rank (r)
- Layers for fine-tuning (target_modules)

3️⃣ Load dataset

↳ We'll fine-tune Gemma 3 to make it extremly smart at playing chess.

↳ Given a set of previous move (one move missing) & the final result it has to predict the missing move.

↳ In order to do this we're using the ChessInstruct dataset from HuggingFace.

4️⃣ Prepare dataset

↳ Next, we use a conversation style dataset to fine-tune Gemma 3.

↳ The standardize_data_formats method converts the dataset to the correct format for finetuning purposes!

5️⃣ Define Trainer and train the model

↳ We create a Trainer object by specifying the training config, like learning rate, model, tokenizer, and more, and initiate training.

Done!

This gives us the fine-tuned Gemma 3 that can find the exact missing chess move instead of randomly generating some moves.

Find the complete fine-tuning guide by Unsloth in the comments.

---

Share this with your network if you found this insightful ♻️
Follow me (Akshay Pachaar) for more insights and tutorials on AI and Machine Learning!
