library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
    titlePanel("Using Spinners"),
    fluidRow(
        column(6, h4("Without Spinner")),
        column(6, h4("With Spinner"))
    ),
    fluidRow(
        column(6, wellPanel(plotOutput("plot_without_spinner"))),
        column(6, wellPanel(shinycustomloader::withLoader(plotOutput("plot_with_spinner"))))
    )
))
