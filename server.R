# server.R

shinyServer(
  function(input, output) {
    
    outputTxt <- reactiveValues()
    
    out <- observe({outputTxt$out <- input$var})
    out <- observe({outputTxt$out <- input$var2})
    

    
    output$text1 <- renderText({ 
      paste("You have selected", outputTxt$out)
    })
    
  }
)