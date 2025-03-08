# 🎥 YouTube Video Summarizer  

**YouTube Video Summarizer** is a web application that generates concise summaries of YouTube videos using AI. It provides two levels of detail and supports three languages: **Spanish, English, and French**.  

## 🚀 Features  

- 📜 **Summarizes YouTube videos** in a few clicks  
- 🔍 **Two levels of detail** for better comprehension  
- 🌍 **Available in Spanish, English, and French**  
- ⚡ **Quick access to key points** without watching full videos  

## ⚠️ Important Notice  

Currently, the project **does not work on deployed platforms like Vercel** due to recent restrictions imposed by Google on retrieving YouTube video transcripts via their API. However, the application **runs locally without any problem** on your machine.  

## 🛠️ Installation & Usage  

### 1️⃣ Clone this repository  
```bash
git clone https://github.com/berrujaime/YoutubeVideoSummarizer.git
cd YoutubeVideoSummarizer
```

### 2️⃣ Install dependencies  
```bash
pip install -r requirements.txt
```

> **Note:** The `requirements.txt` file includes libraries for **Google Cloud** and **Vertex AI**, in case you want to use **Gemini** instead of **OpenAI**. If you choose to use Gemini, you'll need to **modify `views.py` accordingly**. By default, the project uses the OpenAI API.

### 3️⃣ Set up environment variables  
Before running the project, set your **OpenAI API key** as an environment variable.

### 4️⃣ Update the backend route  
Make sure to **uncomment the `summarize` route** in the backend before running the application.  

### 5️⃣ Run the Django server  
```bash
python manage.py runserver
```

### 6️⃣ Open your browser  
Go to:  
```
http://127.0.0.1:8000
```

## 🌐 Live Version  

Check out the live version (which currently has limitations):  
🔗 [ytsummarizer.es](https://ytsummarizer.es)  

## 🛠️ Using Gemini Instead of OpenAI  

If you want to use **Gemini** instead of OpenAI:  
1. Make sure you have a **Google Cloud project** with Vertex AI enabled.  
2. Adapt `views.py` to use Vertex AI's API instead of OpenAI's API.  
3. Set up your **Google Cloud credentials** before running the project.  

## 📩 Feedback  

I’d love to hear your thoughts! Feel free to open an issue or contribute.  
