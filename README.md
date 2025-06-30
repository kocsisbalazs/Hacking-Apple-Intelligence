# 🍏 Apple Intelligence Chatbot

Prompt-injected chatbot powered by **Apple Intelligence's Writing Tools**, to simulate an LLM chatbot, since Apple hasn’t any API for their LLM.

This project uses:
- 📝 Apple Notes + the **Rewrite** function as the backend LLM
- 💻 AppleScript + `osascript` to automate the interface
- 🧑‍💻 Node.js CLI to simulate conversation
- 🧠 Prompt injection to force the writing tool to behave like a chatbot

---

## 🧠 How It Works

Apple Intelligence currently offers **no API** and no chatbot interface.  
We simulate one by:

1. Creating a temporary note in Apple Notes
2. Injecting the entire chat history as a prompt
3. Triggering the **Rewrite** tool via AppleScript
4. Detecting the new response by monitoring the clipboard
5. Appending the result to the conversation

---

## ⚙️ Technologies Used

- **Node.js** — CLI interface
- **AppleScript** — UI automation
- **osascript** — Shell bridge between Node and macOS
- **macOS Notes app** — Work as a "GUI" interface between the user and Apple Intelligence's writing tool

---

## 📦 Installation

1. Install Node.js
2. Clone this repository
3. Run:

   ```bash
   npm install
   node chatbot.js
   ```
