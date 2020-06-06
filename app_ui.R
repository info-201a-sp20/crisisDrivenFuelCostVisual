## Introduction
introduction <- tabPanel (
  "Introduction",
  h3("Analyzing Global Events leading to Economic Crisis"),
  img("",
      src =
        "https://www.chartingyourfinancialfuture.com/wp-content/uploads/2017/08/global-crisis-2.jpg",
      height = 250, width = 300, align = "center"),
  h3("Introduction"),
  p("Our group focuses on the trends in prices of different
     goods when a major event happens and how the prices recover. We are
     interested in this topic because we are all being affected by global events
     and we want to understand what it might look like in the future when a major
     event happens."),
  h3("Datasets Used"),
  p("Our group decided started out with four major datasets,
       which we later narrowed down and put a focus on fossil fuel consumption."),
    
    h6("Natural gas prices"),
    p("This data comes from U.S. Energy Information Administration EIA Data Dataset contains Monthly and Daily prices of Natural gas, starting from January 1997 to current year.
    There are two sets of data, one is daily price of natural gas, the other is monthly price of natural gas.
    Both datasets have 2 columns, daily price has 5876 rows, monthly price has 280 rows.
    These two datasets could help us answer all three questions if we create some data visualizations and answer questions accordingly.
    Source link: https://datahub.io/core/natural-gas#resource-daily"),
   
    h6("Natural gas prices global"),
     p("This data comes from Global Energy Statistic contains Annually prices of Natural gas, starting from 2009 to 2018.
     The dataset has 4 columns, 80 rows.
     This dataset could help us answer third question by comparing prices by each countries and finding relationship between US and global gas prices.
     Source link: https://ourworldindata.org/grapher/natural-gas-prices"),
  
     h6("Global price of Brent Crude"),
  
     p("This comes from International Monetary Fund, recording of US dollars per Barrel. Data ranges from 1990 to 2020.
     The amount recorded is the average during that given month.
     Dataset has 2 columns and 364 rows
     This dataset on global price of brent crude can also answer all three questions since it records monthly price of gas prices per barrel. Which will help us see trends more clearly.
     Source link: https://fred.stlouisfed.org/series/POILBREUSDM"),
  
    h6("Global Food Prices Database"),
  
     p("Contains Global Food Prices data from the World Food Programme covering different foods for 76 countries and 1,500 markets.
     They recorded prices based off of location and variety. Some data dates all the way back to 1992.
     There are more than 1046915 rows (that my computer could load), and 17 columns, we will have to delete some unnecessary columns since it is such a large file.
     This dataset is very helpful due to its thoroughness and range. We can use this dataset to answer all three questions as well. We can also choose to look at different regions and different foods during different times.
     Source link: https://data.humdata.org/dataset/wfp-food-prices"),
  h3("Data Driven Questions"),
  p("Our group wanted to answer a variety of questions from the datasets we were able to find."), 
  p("1. How can our daily product prices be affected by global events/crisis?"),
  p("2. Do prices bounce back after such events, if so how do they look like after the event?"),
  p("3. What kind of crisis can we derive from changes of global prices?"),
  p("The following graphs are charts will help you understand our analysis."),
  p("From our large datasets we were able to look at even more specific questions.
     Compare the consumption of different fossil fuels such as coal, crude oil 
     and natural gas and their prices before and after a crisis and try to predict 
     the occurence of a global crisis.")
)

## Hearim here is your interactive page where you spot crisis
## dont forget to change the name to however you see fit


price_bounce <- tabPanel (
  "Price changes after crisis",
  sidebarLayout(
    ## Side
    sidebarPanel(
      selectInput(
        inputId = "radioInput",
        label = h3("Which crisis affected in prices?"),
        choices = c("1990 Oil Price Shock" = 1, "2000s Energy Crisis" = 2,
                       "Great Recession" = 3)
      )
    ),
    ## Main
    mainPanel(
      plotOutput(
        outputId = "newbounce"
      )
    )
  )
)





## Consumption
demand <- tabPanel (
  "Consumption",
  h2("Fossil fuel consumption graph"),
  sidebarLayout(
    ## Side
    sidebarPanel(
      sliderInput("sliderInput", "Year: ",
                  min = 1800, max = 2018,
                  value = c(1800,2018)),
    ),
    ## Main
    mainPanel(
      plotOutput(
        outputId = "consumption"
      )
    )
  )
)

## How demand bounce back after such crisis
demand_bounce <- tabPanel (
  "Consumption trend after crisis",
  sidebarLayout(
    ## Side
    sidebarPanel(
      radioButtons(
        inputId = "radioInput3",
        label = h3("Which crisis?"),
        choices = list("70s energy crisis" = 1, "80s energy glut" = 2,
                       "Great recession" = 3)
      )
    ),
    ## Main
    mainPanel(
      plotOutput(
        outputId = "bounce"
      )
    )
  )
)

## Summary
project_summary <- tabPanel (
  "Summary",
  h3("Takeaway 1"),
  p("Interestingly, the data shows that the consumption of all fossil fuels fell 
     after a global event that caused a crisis. The prices bounced back after a few years.
     The trend in the declining and bouncing back of prices were different for each respective
     product."),
  p("The graph below illustrates the trend in the consumption of coal, crude oil and 
     natural gas after the 70's energy crisis."),
  img(src = 'https://www.nextbigfuture.com/wp-content/uploads/2014/10/per-capita-consumption-of-various-fuels_line-1.png', height = 250, width = 400, align = "center"),
  p("This insight may raise further questions about whether we can predict when a global 
     crisis is headed our way and better prepare for it."),
  h3("Takeaway 2"),
  p("The consumption of fossil fuels over the last few decades has been clearly influenced by major
     global events like the 80s Energy glut and the Great recession. The graph below shows the trends in
     consumption of fossil fuels like coal, natural gas and other energy sources in face of global events. 
     Consumption almost always falls in the event of a crisis. The proportion to which it falls depends on 
     a myriad of factors depending not only on the fuel in question but it also depends on the country in question."),
  img(src = "https://mogreenstats.files.wordpress.com/2013/05/mo-per-cap-energy-consumpt-by-source-1960-2010.jpg", height = 300, width = 400, align = "center"),
  p("This also makes us think about the effect on the prices of these goods in the face of global events. 
     The general trend is that the prices of these goods increase in events of a global crisis."),
  h3("Takeaway 3"),
  p("Coming to the topic of how to calculate the effect of these global events on prices. We also look at how long it takes
     for the prices to return back to their normal cost bracket. The graph below will help in determining that, the general 
     trend seems to be that the costs are very unstable during these time periods with peaks and sudden drops. This usually 
     takes a few years to settle down, the prices then stabilize then show a similar almost linear increase as before the global crisis."),
  img(src = "https://upload.wikimedia.org/wikipedia/commons/e/e7/Oil_prices_to_gas_prices_graph.png",
      height = 300, width = 400, align = "center"),
  p("When it comes to predicting when a global crisis can occur. From analysis of the data we have we know the factors that can 
     cause a major change in consumption and the prices of commodities like fossil fuels. We can then predict the effect the event can have on goods
     by looking back at these visualizations and preparing for the circumstances as needed.")
)

ui <- navbarPage (
  "Crisis driven prices",
  introduction,
  price_bounce,
  demand,
  demand_bounce,
  project_summary
)