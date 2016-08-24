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
  
  sliderInput("n3", "height of plot", value=250, min=200, max=400)
),
  
  mainPanel(
    # This is the dynamic UI for drawing plot, changing it's size and placing dot 
    uiOutput("drawplot")
  )
))
