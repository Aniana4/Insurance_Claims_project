library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Hello Shiny!"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      
      radioButtons("Categorias", label = h3("Categorias"),
                   choices = list("Cat1" = "C1", "Cat2" = "C2", "Cat3"="C3" ), 
                   selected = "C1")
    ),
    mainPanel(
      h4("Graficos de variables categoricas"),
      tableOutput("tablaCategorias")
    )
  )
))