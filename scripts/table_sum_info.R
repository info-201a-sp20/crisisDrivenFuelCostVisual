## Returns a table of summary information 
library(dplyr)
library(knitr)

## Takes in a datafram, returns a table sorted by year,
## with three columns, average of gas, oil and coal world wide that year
## Listed in decreasing order in respect to oil price.

table_sum_info <- function(df) {
  display_data <- filter(df, !is.na(Year)) %>%
    group_by(Year) %>%
    summarize(coal_avg = mean(Coal, na.rm = TRUE),
              gas_avg = mean(Gas, na.rm = TRUE),
              oil_avg = mean(Oil, na.rm = TRUE)) %>%
    arrange(desc(oil_avg))
  
  return(kable(display_data))  
}

## From this graph we could see how these three mail fossil fuels' prices are related
## and if certain year has very unusual change in price. Usually prices should be linearly
## increasing, so if isn't we can spot it right away by year being in wrong order.