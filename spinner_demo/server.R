library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$plot_without_spinner <- renderPlot({

        x <- rnorm(1e4, 100, 25)
        y <- x + rnorm(1e4, 0, 10)
        data <- data.frame(x, y)

        ggplot(data, aes(x, y)) +
            geom_point(color = scales::alpha("steelblue", 0.3)) +
            geom_smooth(method = "lm")

    })

    output$plot_with_spinner <- renderPlot({

        x <- rnorm(1e4, 100, 25)
        y <- x + rnorm(1e4, 0, 10)
        data <- data.frame(x, y)

        ggplot(data, aes(x, y)) +
            geom_point(color = scales::alpha("steelblue", 0.3)) +
            geom_smooth(method = "lm")

    })

})
