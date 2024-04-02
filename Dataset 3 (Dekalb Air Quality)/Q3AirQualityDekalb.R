library(ggplot2)
library(plotly)

#import dataset
dekalbAQI <- read.csv("dekalbAQI.csv")


# Plot for PM2.5 Levels
dekalbPM25 <- ggplot(data = dekalbAQI, aes(x = Year, y = Days.PM2.5)) +
  geom_line(color = "#FF5733") +  # Matching line color
  geom_point(color = "#2E86C1", size = 3) +  # Matching point style and size
  labs(title = 'PM2.5 in DeKalb County, GA Over Years', x = 'Year', y = 'Level of PM 2.5') +
  theme_minimal()

# make dekalbPM25 interactive
dekalbPM25_plotly <- ggplotly(dekalbPM25, tooltip = c("x", "y"))

# Plot for Ozone Levels
dekalbOzone <- ggplot(data = dekalbAQI, aes(x = Year, y = Days.Ozone)) +
  geom_line(color = "#FF5733") +  # Matching line color
  geom_point(color = "#2E86C1", size = 3) +  # Matching point style and size
  labs(title = 'Ozone Levels in DeKalb County, GA Over Years', x = 'Year', y = 'Level of Ozone (DU)') +
  theme_minimal()

# make dekalbOzone interactive
dekalbOzone_plotly <- ggplotly(dekalbOzone, tooltip = c("x", "y"))

#DISPLAYING PLOTS
dekalbPM25_plotly
dekalbOzone_plotly

