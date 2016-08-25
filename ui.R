#
# Definition of user-interface for Shiny web application
# 
# UI has three slide bars, one for giving start value for dot, which
# is drawn to plot area. Other two slide bars control plot size (width, height)
#
# Created 23.8.2016 Jarmo Pesonen
# 


library(shiny)

# Define UI for application that draws dynamically changing plot

shinyUI(pageWithSidebar(
  
  headerPanel("PlotMixer"),
  
  sidebarPanel(
    sliderInput("n", "start value for dot x and y placement", value=3, min=1, max=5),
  
  sliderInput("n2", "width of plot", value=250, min=200, max=400),
  
  sliderInput("n3", "height of plot", value=250, min=200, max=400),
  h6("This is small app, which changes plot dimensions based on user given values and also dot location. When calculating dot location app takes into account user given value.", align = "center"), 
  h6("For example value 2 means location x = 2, y = 2. App then randomizes final location for dot by summing number between 1 to 5 to user given x and y values. Any change to slidebars also causes recalculation for generated plot", align = "center")
),
  
  mainPanel(
    # This is the dynamic UI for drawing plot, changing it's size and placing dot 
    uiOutput("drawplot")
  )
))
