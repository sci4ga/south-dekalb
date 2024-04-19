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
  Fluoride = "Fluoride is added to water to prevent tooth decay, with an acceptable level up to 4.0 ppm (parts per million). Excessive fluoride can lead to dental and skeletal fluorosis, according to standards set by the Environmental Protection Agency (EPA) in the United States.",
  Nitrate = "Nitrate, from sources like fertilizer runoff, septic systems, and natural deposits, has an EPA-regulated acceptable level of up to 10 ppm. High levels can cause methemoglobinemia, particularly in infants, leading to decreased oxygen delivery to vital organs.",
  `Chlorine,free` = "Free chlorine is used as a disinfectant in water systems, with an acceptable level up to 4.0 ppm Cl. Excessive chlorine can cause eye/nose irritation and stomach discomfort. These standards are enforced by the EPA.",
  `Chlorine,total` = "Total chlorine, including both free and combined forms, has an acceptable level up to 4.0 ppm Cl. Overexposure to chlorine can lead to respiratory issues and skin irritation. The EPA sets this standard to balance disinfection with safety.",
  `Total Trihalomethanes (THMs)` = "THMs are by-products of chlorination with an acceptable level up to 80 ppb (parts per billion). Long-term exposure to high levels of THMs may increase the risk of cancer and reproductive issues, according to the EPA.",
  `Total Haloacetic Acids (HAAs)` = "HAAs, disinfection by-products like THMs, have an EPA-regulated acceptable level up to 60 ppm. Elevated levels may be associated with an increased risk of cancer and potentially other health issues.",
  Cu = "Copper, leaching from pipes and plumbing, has an EPA action level of 1.3 ppm. High copper levels can cause gastrointestinal distress and, with long-term exposure, liver or kidney damage.",
  Pb = "Lead, potentially leaching from pipes and solder, has an EPA action level of 15 ppb. Lead exposure is particularly hazardous, leading to neurological damage, developmental delays in children, and cardiovascular issues in adults.",
  Turbidity = "Turbidity measures water clarity with an acceptable standard of less than 1 NTU (Nephelometric Turbidity Units). High turbidity can shield harmful pathogens, increasing the risk of gastrointestinal diseases. The EPA regulates this to ensure water clarity and safety.",
  `Total Organic Carbon` = "TOC indicates organic molecules in water, without a specific MCL but requiring EPA-regulated reduction levels. High TOC levels can enhance bacterial growth and the formation of disinfection by-products, which may increase cancer risk.",
  `Total Coliform` = "Total coliform bacteria, indicating microbial contamination, must not exceed a positive result in more than 5% of samples per month for systems collecting at least 40 samples. Presence of coliform is a potential indicator of pathogens that can cause waterborne diseases. The EPA standard is reported as positive/absent (P/A) per sample."
)



# Define UI
ui <- fluidPage(
  theme = shinytheme("cosmo"), # Applying a cosmo theme for a modern look
  titlePanel("Water Quality Parameters in DeKalb County, GA Over Recent Years"),
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






