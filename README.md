Shiny chat app
==============

This project contains a Shiny application which provides a chat interface to an LLM from OpenAI, similar to the one available at [chatgpt.com](https://chatgpt.com/).

To run it, first install some packages from R:

```R
if (!require("pak")) install.packages("pak")  # Instal pak if not already installed
pak::pak(c("dotenv", "shiny", "hadley/elmer", "jcheng5/shinychat"))
```

Then create a file named `.env` in the project directory with API keys that you have been provided. (Replace the `XXXXXXXX` below with the actual API keys.)

```
OPENAI_API_KEY="XXXXXXX"
ANTHROPIC_API_KEY="XXXXXXX"
EMBEDDING_IO_API_KEY="XXXXXXXX"
```

Next, open basic-chat/app.R in the editor and click on the Run button. You should now have a running chat application!
