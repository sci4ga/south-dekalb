#load packages
library(ggplot2)
library(plotly)

#import datasets
aqi2016 <- read.csv("annual_aqi_by_county_2016.csv")
aqi2017 <- read.csv("annual_aqi_by_county_2017.csv")
aqi2018 <- read.csv("annual_aqi_by_county_2018.csv")
aqi2019 <- read.csv("annual_aqi_by_county_2019.csv")
aqi2020 <- read.csv("annual_aqi_by_county_2020.csv")
aqi2021 <- read.csv("annual_aqi_by_county_2021.csv")
aqi2022 <- read.csv("annual_aqi_by_county_2022.csv")
aqi2023 <- read.csv("annual_aqi_by_county_2023.csv")

#subset to get just DeKalb County in Georgia
dekalb2016 <- subset(aqi2016, State == "Georgia" & County == "DeKalb")
dekalb2017 <- subset(aqi2017, State == "Georgia" & County == "DeKalb")
dekalb2018 <- subset(aqi2018, State == "Georgia" & County == "DeKalb")
dekalb2019 <- subset(aqi2019, State == "Georgia" & County == "DeKalb")
dekalb2020 <- subset(aqi2020, State == "Georgia" & County == "DeKalb")
dekalb2021 <- subset(aqi2021, State == "Georgia" & County == "DeKalb")
dekalb2022 <- subset(aqi2022, State == "Georgia" & County == "DeKalb")
dekalb2023 <- subset(aqi2023, State == "Georgia" & County == "DeKalb")


#subset to get just Henry County in Georgia
henry2016 <- subset(aqi2016, State == "Georgia" & County == "Henry")
henry2017 <- subset(aqi2017, State == "Georgia" & County == "Henry")
henry2018 <- subset(aqi2018, State == "Georgia" & County == "Henry")
henry2019 <- subset(aqi2019, State == "Georgia" & County == "Henry")
henry2020 <- subset(aqi2020, State == "Georgia" & County == "Henry")
henry2021 <- subset(aqi2021, State == "Georgia" & County == "Henry")
henry2022 <- subset(aqi2022, State == "Georgia" & County == "Henry")
henry2023 <- subset(aqi2023, State == "Georgia" & County == "Henry")


#subset to get just Clayton County in Georgia
clay2016 <- subset(aqi2016, State == "Georgia" & County == "Clayton")
clay2017 <- subset(aqi2017, State == "Georgia" & County == "Clayton")
clay2018 <- subset(aqi2018, State == "Georgia" & County == "Clayton")
clay2019 <- subset(aqi2019, State == "Georgia" & County == "Clayton")
clay2020 <- subset(aqi2020, State == "Georgia" & County == "Clayton")
clay2021 <- subset(aqi2021, State == "Georgia" & County == "Clayton")
clay2022 <- subset(aqi2022, State == "Georgia" & County == "Clayton")
clay2023 <- subset(aqi2023, State == "Georgia" & County == "Clayton")

#combine together to have a dataframe that spans from 2018-2023
dekalbAQI <- rbind(dekalb2016,dekalb2017,dekalb2018,dekalb2019,dekalb2020,dekalb2021,dekalb2022,dekalb2023)
write.csv(dekalbAQI, '/Users/camillayoon/Library/Mobile Documents/com~apple~CloudDocs/ACamilla/Emory/2023-24/Capstone/P3/dekalbAQI.csv') #insert file path
dekalbAQI

henryAQI <- rbind(henry2016,henry2017,henry2018,henry2019,henry2020,henry2021,henry2022,henry2023)
write.csv(henryAQI, '/Users/camillayoon/Library/Mobile Documents/com~apple~CloudDocs/ACamilla/Emory/2023-24/Capstone/P3/henryAQI.csv') #insert file path
henryAQI

claytonAQI <- rbind(clay2016,clay2017,clay2018,clay2019,clay2020,clay2021,clay2022,clay2023)
write.csv(claytonAQI, '/Users/camillayoon/Library/Mobile Documents/com~apple~CloudDocs/ACamilla/Emory/2023-24/Capstone/P3/claytonAQI.csv') #insert file path
claytonAQI

# Plots for DeKalb County, GA
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

