library(shiny)

Categorias <- read.csv("Datos/train_cat.csv", sep =",")


shinyServer(function(input, output) {  
  output$tablaCategorias <- renderTable({
    head(recom(input$Cat),n=15)
  })