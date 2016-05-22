library(shiny)
library(ggplot2)
library(dplyr)

data(mtcars)

server <- function(input, output) {

  output$cool2plot <- renderPlot({
    #ggplot(mtcars, aes(x = input$xInput, y = mpg, color=wt)) + geom_point(size=input$pointsizeInput) 
    ggplot(mtcars, aes(x = eval(parse(text = input$xInput)), y = mpg, color=wt)) + geom_point(size=input$pointsizeInput) 
    
  })    
  
  

}



