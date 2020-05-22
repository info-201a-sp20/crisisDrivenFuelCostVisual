## Bar graph of fossil fuel consumption
library(dplyr)
library("ggplot2")
library("reshape2")

## Takes in a dataframe, returns a bargraph with x-axis as years, y-axis
## in consumption, unit is terawatt per hour. Each year has three bars, representing
## the consumption of oil, gas and coal.
bar_graph <- function(df) {
  # Filtering the data set
  bar_data <- df %>%
    group_by(Year) %>%
    summarize(oil = mean(Oil, na.rm = TRUE),
              gas = mean(Gas, na.rm = TRUE),
              coal = mean(Coal, na.rm = TRUE))
  
  # Making the bar graph
  new_data <- melt(bar_data, id.vars = 'Year')
  graph <- ggplot(new_data, aes(x = Year, y = value)) +
    geom_bar(aes(fill = variable), position = "dodge", stat="identity") +
    labs(x = "Year", y = "Consumption (TWh)",
         title = "Fossil fuel consumption by year")
  return(graph)
}

## This graph shows us clearly what the trend is like for consumption in the
## past few decades.
