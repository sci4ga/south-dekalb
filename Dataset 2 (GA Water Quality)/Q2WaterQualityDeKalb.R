#import dekalb water quality data
dekalbWaterQ <- read.csv("DekalbWaterQuality.csv")

############################################


#MAKE INTERACTIVE PLOT
library(shiny)
library(shinythemes)
library(shinyWidgets)
library(ggplot2)
library(plotly)

# Descriptions for each parameter
parameterDescriptions <- list(
  Fluroide = "Fluoride is added to water to prevent tooth decay. The acceptable level is up to 4.0 mg/L (milligrams per liter) as the maximum contaminant level (MCL). This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  Nitrate = "Nitrate can enter water from fertilizer runoff, septic systems, and erosion of natural deposits. The acceptable level is up to 10 mg/L as nitrate-N for protecting infants from methemoglobinemia. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Chlorine,free` = "Free chlorine is used as a disinfectant in water systems. The acceptable level is generally up to 4.0 mg/L as Cl2. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Chlorine,total` = "Total chlorine measures both free and combined forms of chlorine. The acceptable level is also up to 4.0 mg/L as Cl2. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Total Trihalomethanes (THMs)` = "THMs are by-products of chlorination. The acceptable level is up to 80 µg/L (micrograms per liter). This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Total Haloacetic Acids (HAAs)` = "HAAs are also by-products of disinfection. The acceptable level is up to 60 µg/L. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  Cu = "Copper can leach from pipes and plumbing fixtures. The action level at which treatment is required is 1.3 mg/L. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  Pb = "Lead can also leach from pipes and solder. The action level for lead is 0.015 mg/L. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  Turbidity = "Turbidity measures the clarity of water. The acceptable level depends on the type of water system but is typically less than 1 NTU (Nephelometric Turbidity Units) for treated water. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Total Organic Carbon` = "TOC is a measure of organic molecules in water. There is no specific MCL, but systems must treat water to reduce TOC levels by a certain percentage to avoid disinfection by-product formation. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States.",
  `Total Coliform` = "Total coliform bacteria are indicators of microbial contamination. The acceptable level is that no more than 5% of samples per month are positive for systems collecting at least 40 samples per month. This is according to common regulatory standards, such as those set by the Environmental Protection Agency (EPA) in the United States."
  
)

# Define UI
ui <- fluidPage(
  theme = shinytheme("cosmo"), # Applying a cosmo theme for a modern look
  titlePanel("Water Quality Parameters in DeKalb County, GA Over Years"),
  sidebarLayout(
    sidebarPanel(
      pickerInput("parameterInput", "Choose a parameter:",
                  choices = unique(dekalbWaterQ$Parameter),
                  options = list(`actions-box` = TRUE, `live-search` = TRUE), # Enabling search within dropdown
                  selected = unique(dekalbWaterQ$Parameter)[1]
      ),
      tags$hr(),
      tags$p("Select a water quality parameter to view its levels over the years and learn more about its health implications.")
    ),
    mainPanel(
      tabsetPanel(
        tabPanel("Plot", plotlyOutput("plot")),
        tabPanel("Description", uiOutput("paramDescription"))
      )
    )
  )
)


# Define server logic
server <- function(input, output) {
  output$plot <- renderPlotly({ # Change renderPlot to renderPlotly
    filteredData <- subset(dekalbWaterQ, Parameter == input$parameterInput)
    
    # Create a ggplot object
    p <- ggplot(filteredData, aes(x = Year, y = Result, group = 1, text = paste("Year:", Year, "<br>Result:", Result))) +
      geom_line(color = "#FF5733") + 
      geom_point(color = "#2E86C1", size = 3) + 
      theme_minimal() +
      labs(title = paste("Levels of", input$parameterInput, "Over Years"),
           x = "Year",
           y = paste("Result (", unique(filteredData$Units), ")", sep = ""))
    
    # Convert ggplot object to plotly object for interactivity
    ggplotly(p, tooltip = "text") # Specify tooltip to display
  })
  
  
  output$paramDescription <- renderUI({
    HTML(paste("<p>", parameterDescriptions[[input$parameterInput]], "</p>"))
  })
}

# Run the application
shinyApp(ui = ui, server = server)






