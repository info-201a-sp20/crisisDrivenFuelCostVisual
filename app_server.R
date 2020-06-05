
server <- function(input, output) {
  ## Hearim your graph goes here
  
  
  ## Consumption graph
  output$consumption <- renderPlot({
    data <- read.csv("data/fossilfuel/global-fossil-fuel-consumption.csv") %>%
      subset(select = -c(Entity, Code)) %>%
      filter(Year >= input$sliderInput[1] & Year <= input$sliderInput[2]) %>%
      melt(id.vars = 'Year')
    result <- ggplot(data = data, aes(Year, value, col = variable)) +
      geom_line() +
      labs(y = "Consumption (TWh)", x = "Year", title = "Fossil fuel consumption")
    result
  })
  
  ## Consumption bounce back graph
  data_bounce <- read.csv("data/fossilfuel/global-fossil-fuel-consumption.csv") %>%
    subset(select = -c(Entity, Code))
  
  output$bounce <- renderPlot({
    if(input$radioInput == 1){
      new_data <- filter(data_bounce, Year >= 1970 & Year < 1980) %>%
        melt(id.vars = 'Year')
      result <- ggplot(new_data, aes(Year, value, col = variable)) +
        geom_line() +
        scale_x_continuous(breaks = pretty(new_data$Year, n = 10)) +
        labs(y = "Consumption (TWh)", x = "Year", title = "70s energy crisis")
      result
    }else if(input$radioInput == 2){
      new_data <- filter(data_bounce, Year >= 1980 & Year < 1990) %>%
        melt(id.vars = 'Year')
      result <- ggplot(new_data, aes(Year, value, col = variable)) +
        geom_line() +
        scale_x_continuous(breaks = pretty(new_data$Year, n = 10)) +
        labs(y= "Consumption (TWh)", x = "Year", title = "80s energy glut")
      result
    }else if(input$radioInput == 3){
      new_data <- filter(data_bounce, Year >= 2007 & Year < 2017) %>%
        melt(id.vars = 'Year')
      result <- ggplot(new_data, aes(Year, value, col = variable)) +
        geom_line() +
        scale_x_continuous(breaks = pretty(new_data$Year, n = 10)) +
        labs(y= "Consumption (TWh)", x = "Year", title = "Great Recession")
      result
    }
  })
  
}