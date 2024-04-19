library(ggplot2)
library(plotly)

#import dataset
dekalbAQI <- read.csv("dekalbAQI.csv")
henryAQI <- read.csv("henryAQI.csv")
claytonAQI <- read.csv("claytonAQI.csv")


#################
#Plots with DeKalb County, GA
#################
# Plot for PM2.5 Levels
dekalbPM25 <- ggplot(data = dekalbAQI, aes(x = Year, y = Days.PM2.5)) +
  geom_line(color = "#FF5733") +  # Matching line color
  geom_point(color = "#2E86C1", size = 3) +  # Matching point style and size
  labs(title = 'PM2.5 in DeKalb County, GA Over Years', x = 'Year', y = 'Days PM 2.5 Exceeded Standard') +
  theme_minimal()

# make dekalbPM25 interactive
dekalbPM25_plotly <- ggplotly(dekalbPM25, tooltip = c("x", "y"))

# Plot for Ozone Levels
dekalbOzone <- ggplot(data = dekalbAQI, aes(x = Year, y = Days.Ozone)) +
  geom_line(color = "#FF5733") +  # Matching line color
  geom_point(color = "#2E86C1", size = 3) +  # Matching point style and size
  labs(title = 'Ozone Levels in DeKalb County, GA Over Years', x = 'Year', y = 'Days Ozone Exceeded Standard') +
  theme_minimal()

# make dekalbOzone interactive
dekalbOzone_plotly <- ggplotly(dekalbOzone, tooltip = c("x", "y"))

#DISPLAYING PLOTS
dekalbPM25_plotly
dekalbOzone_plotly

#################
#Plots with DeKalb, Clayton, and Henry County, GA
#################

# Combine data from different counties
allAQI <- rbind(dekalbAQI, henryAQI)
allAQI$county <- rep(c("DeKalb", "Henry"), times = c(nrow(dekalbAQI), nrow(henryAQI)))

# Plot for PM2.5 Levels
allPM25 <- ggplot(data = allAQI, aes(x = Year, y = Days.PM2.5, color = county, group = county)) +
  geom_line() +  # Lines for each county
  geom_point(size = 3) +  # Points for each county
  scale_color_manual(values = c("DeKalb" = "#FF5733",  "Henry" = "#2E86C1")) +
  labs(title = 'PM2.5 Levels Over the Years in DeKalb, Clayton, and Henry Counties, GA', x = 'Year', y = 'Days PM 2.5 Exceeded Standard') +
  theme_minimal()

# Make allPM25 interactive
allPM25_plotly <- ggplotly(allPM25, tooltip = c("x", "y"))

# Plot for Ozone Levels
allOzone <- ggplot(data = allAQI, aes(x = Year, y = Days.Ozone, color = county, group = county)) +
  geom_line() +  # Lines for each county
  geom_point(size = 3) +  # Points for each county
  scale_color_manual(values = c("DeKalb" = "#FF5733", "Henry" = "#2E86C1")) +
  labs(title = 'Ozone Levels Over the Years in DeKalb and Henry Counties, GA', x = 'Year', y = 'Days Ozone Exceeded Standard') +
  theme_minimal()

# Make allOzone interactive
allOzone_plotly <- ggplotly(allOzone, tooltip = c("x", "y"))

#DISPLAYING PLOTS
allPM25_plotly
allOzone_plotly

##Ratio in order to consider that some counties did not have AQI for every day
# Plot for PM2.5 Levels
ratioAllPM25 <- ggplot(data = allAQI, aes(x = Year, y = Days.PM2.5/Days.with.AQI, color = county, group = county)) +
  geom_line() +  # Lines for each county
  geom_point(size = 3) +  # Points for each county
  scale_color_manual(values = c("DeKalb" = "#FF5733", "Henry" = "#2E86C1")) +
  labs(title = 'PM2.5 Levels Over the Years in DeKalb and Henry Counties, GA', x = 'Year', y = 'Ratio of Days PM 2.5 Exceeded Standard') +
  theme_minimal()
ratioAllPM25

# Plot for Ozone Levels
ratioAllOzone <- ggplot(data = allAQI, aes(x = Year, y = Days.Ozone/Days.with.AQI, color = county, group = county)) +
  geom_line() +  # Lines for each county
  geom_point(size = 3) +  # Points for each county
  scale_color_manual(values = c("DeKalb" = "#FF5733", "Henry" = "#2E86C1")) +
  labs(title = 'Ozone Levels Over the Years in DeKalb and Henry Counties, GA', x = 'Year', y = 'Ratio of Days Ozone Exceeded Standard') +
  theme_minimal()
ratioAllOzone

