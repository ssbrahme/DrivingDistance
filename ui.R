
library(shiny)
ui <- shinyUI(pageWithSidebar(
  headerPanel("Calculate driving distances here!"),
  sidebarPanel(
    textInput("from_city", "From City", "") ,
    textInput("to_city", "To City", "") ,
    helpText("Note: Distances are calculated using Google Distance Matrix API"),
    
    submitButton("Calculate")
    
  ),
  
  
  
  mainPanel(
    
    h4 ("Driving Distance is:"),
    #verbatimTextOutput("text"),
    
    #h4 ("Cities"),
    #verbatimTextOutput("caption") ,
    
    #h4("Summary Final"),
    verbatimTextOutput("summary")
    
  )
))

