#This chart describes fossil fuel consumption by country.
#Three charts are included.
#One for gas, one for coal, and one for oil.
#It is showing each of consumptions by each year by each countires. 

library(ggplot2)

ff_consumption <- read.csv(file = "../data/fossilfuel/fossil-fuel-consumption.csv",stringsAsFactors = FALSE)

gas_consumption <- ggplot(ff_consumption, aes(x = Year, y = Gas)) + geom_point() + scale_x_log10() +
  ggtitle("Gas Consumption By Country") + theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "red")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 )) + labs(x="Years", y="Gas Consumption)") + facet_wrap(~Entity) 

coal_consumption <- ggplot(ff_consumption, aes(x = Year, y = Coal)) + geom_point() + scale_x_log10() +
  ggtitle("Coal Consumption By Country") + theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "blue")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 )) + labs(x="Years", y="Coal Consumption") + facet_wrap(~Entity) 


oil_consumption <- ggplot(ff_consumption, aes(x = Year, y = Oil)) + geom_point() + scale_x_log10() +
  ggtitle("Oil Consumption By Country") + theme(plot.title = element_text(family = "serif", face = "bold", hjust = 0.5, size = 15, color = "brown")) +
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 )) + labs(x="Years", y="Oil Consumption )") + facet_wrap(~Entity) 


gas_consumption
coal_consumption
oil_consumption
