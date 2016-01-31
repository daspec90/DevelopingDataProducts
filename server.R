library(shiny)
library(ggplot2)

shinyServer(function(input, output, session) {

    # Determine the correlation coefficient between the two selected variables.
    correlate <- reactive ({
        cor(data[, c(input$xcol, input$ycol)])
    })
    output$plot1 <- renderPlot({
        par(mar = c(5.1, 4.1, 0, 1))
        ggplot(data, aes_string(x=input$xcol, y=input$ycol)) + geom_point(aes(colour=diagnosis))
        })
    output$text1 <- renderText ({
        Cor <- round(correlate()[2], 3)
        paste0('The correlation between "', input$xcol, '" and "', input$ycol, '" is ', Cor)
    })
})