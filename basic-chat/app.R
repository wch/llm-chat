library(shiny)
library(shinychat)

dotenv::load_dot_env("../env")

# Load the system prompt from disk
system_prompt <- paste(collapse = "\n", readLines("prompt.txt", warn = FALSE))

ui <- bslib::page_fluid(
  h2("Basic chat"),
  chat_ui("chat")
)

server <- function(input, output, session) {
  chat <- elmer::new_chat_openai(
    model = "gpt-4o", 
    system_prompt = system_prompt
  )
  
  observeEvent(input$chat_user_input, {
    stream <- chat$stream_async(input$chat_user_input)
    chat_append("chat", stream)
  })
}

shinyApp(ui, server)
