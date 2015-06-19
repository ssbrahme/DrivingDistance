
library(RCurl)
library(RJSONIO)
library(plyr)
library(shiny)
server <- shinyServer(function(input,output) {
  
  
  
  formulaText <- reactive({
    paste("Driving distance between", input$from_city,"and" , input$to_city )
  })
  
  funcInput <- reactive ({driving.distance(input$from_city, input$to_city)})
  
  
  output$text <- renderText({
    "foo bar"
  })
  
  output$caption <- renderText({
    formulaText()
  })
  
  output$summary <- renderText({
    funcInput()
  })
  
  
})
