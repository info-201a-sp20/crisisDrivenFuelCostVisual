

#Natural Gas (constant 2015 US$)
#Coal (% of under-5s)
#Oil ($)


library(ggplot2)

#gas_prod <- read.csv(file = "../data/fossilfuel/fossil-fuel-price-index.csv",stringsAsFactors = FALSE)
graph_second <- function(df) {

years_x <- c(1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015)

gg <- ggplot(data=df, aes(x=Year , y = Coal, color = "blue"))

result <- gg + geom_line(aes(x=Year, y = Coal, color = "blue")) + geom_line(aes(x = Year, y = Oil, color = "red")) + 
  geom_line(aes(x = Year, y = NaturalGas, color = "black")) + labs(x="Years", y="Price in Dollar") + 
  scale_x_continuous(breaks = years_x) + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1, vjust = 0.5 )) + theme(legend.position="right") +
  scale_color_manual(name = "Fossil Fuel Type",  values = c("blue", "red", "black"), labels = c("blue" = "Coal", "red" = "Oil", "black" = "NaturalGas"))

  return(result)

}

