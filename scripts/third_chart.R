#This chart describes fossil fuel consumption by country, especially in Oil.
#It is showing each of consumptions by each year by each countires. 

library(ggplot2)

#ff_consumption <- read.csv(file = "../data/fossilfuel/fossil-fuel-consumption.csv",stringsAsFactors = FALSE)



graph_third <- function(df) {
new_data <- data %>% filter(Code == "USA")

oil_consumption <- ggplot(data = new_data, aes(x = Year, y = Oil)) + geom_point() + scale_x_log10() +
  ggtitle("Oil Consumption By Country") + theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "brown")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 )) + labs(x="Years", y="Oil Consumption \n (Thousand barrels per day)") + facet_wrap(~Entity) 

return(oil_consumption)

}

