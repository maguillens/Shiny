#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)


# Load Data
#setwd("C:/Users/MIGUEL GUILLEN/Documents/R/AFP_Pe")

dataAFP <- read.csv("./AFP.csv", header = TRUE, sep = ";")


# Use a fluid Bootstrap layout 
fluidPage(     
  
  # Give the page a title 
  titlePanel("AFP Peru 2018"), 
  
  # Generate a row with a sidebar 
  sidebarLayout(       
    
    
    # Define the sidebar with one input 
    sidebarPanel(p(strong("Documentation:",style="color:blue"),a("AFP Data",href="http://www.bcrp.gob.pe/estadisticas/cuadros-de-la-nota-semanal.html")), 
                 selectInput("AFP", "AFP:",  
                             choices=colnames(dataAFP)), 
                 hr(), 
                 helpText("Retability per month - 2018") 
    ), 
    
    # Create a spot for the barplot 
    mainPanel( 
      plotOutput("people")   
    ) 
    
  ) 
)     