#
# This is the server logic of a Shiny web application. 
# server logic defines drawn plot and calculates place for dot on plot area 
# based on user given value and random numbers
#
# Created by Jarmo Pesonen 23.8.2016 
#

library(shiny)

shinyServer(function(input, output) {

# giving names for x and y axis and randomizing given value by user by adding random numbers
# between 1 and 5 user given to x and y dot placement values
 
  i <- 1
  plotname <- paste("plot", i, sep="") 
  output[[plotname]] <- renderPlot({
  plot(input$n + sample(1:5, 1) , input$n + sample(1:5, 1), 
        
            xlim = c(1,10),
            ylim = c(1, 10),
            xlab =" width",
            ylab = "height",
            main = paste("randomized place of dot")
        )
      })

# defining plot dimensions and drawing the plot based on user given values  
     
        output$drawplot <- renderUI({
        plot_output <- lapply(1:input$n, function(i) {
        plotname <- paste("plot", i, sep="")
        plotOutput(plotname, height = input$n2, width = input$n3)
      })
    })
  
})