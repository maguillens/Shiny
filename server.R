#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
# Load Data
#setwd("C:/Users/MIGUEL GUILLEN/Documents/R/AFP_Pe")

dataAFP <- read.csv("./AFP.csv", header = TRUE, sep = ";")

function(input, output) { 
  output$people <- renderPlot({ 
    barplot(dataAFP[,input$AFP],  
            main=input$AFP, 

            ylab="Profitability per month 2018 - PERU (%)", 
            xlab="Month"
            )
    
    })}