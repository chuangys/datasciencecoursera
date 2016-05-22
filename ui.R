str(mtcars)
?mtcars

library(shiny)

ui <- fluidPage(
  titlePanel("MPG (Miles/(US) gallon) distribusion vs. Other factors "),
  
  #headerPanel("Illustrating markup"),
  h3('Purpose: It is for you to do "mtcars" data explorer quickly!'),
  
  h4('Usage: It is can see all of the factors relationship between MPG (Miles/(US) gallon). 
      All you need to do is to choose your interested factors & the points size. Then you can get the scatter plots.
      Besides, due to we already know the car weight (variable: wt) is the key factors of MPG.'),
  
  sidebarLayout(
    sidebarPanel(
      
      h3('Input options'),
      
      radioButtons("xInput","Select Predictor", 
                   choices = c("cyl", "disp", "hp", "drat", "wt", "qsec", "vs", "am"),
                   selected = "wt"),
      sliderInput("pointsizeInput", "Point Size", min=1, max=5, value=3)
    ),
    mainPanel(
      
      
      h4('Scatter plot of MPG vs. you selected factor'),
      
      plotOutput("cool2plot")
    )
  )
)

