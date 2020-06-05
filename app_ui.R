## Yashasvi fill your introduction here
introduction <- tabPanel (
  "Introduction"
)

## Hearim here is your interactive page where you spot crisis
## dont forget to change the name to however you see fit
first <- tabPanel (
  "Hearim's page"
)

## Kang's sidebar for interactive graphs
side_kang <- sidebarPanel(
  radioButtons(
    inputId = "radioInput",
    label = h3("Which crisis?"),
    choices = list("70s energy crisis" = 1, "80s energy glut" = 2,
                   "Great recession" = 3)
  )
)

## Consumption
prices_demand <- tabPanel (
  "Consumption",
  h2("Consumption graphs"),
  sidebarLayout(
    ## Side
    sidebarPanel(
      sliderInput("range", "Year: ",
                  min = 1965, max = 2018,
                  value = c(1965,2018)),
    ),
    ## Main
    mainPanel(
      plotlyOutput(
        outputId = "prices_demand"
      )
    )
  )
)

## How demand bounce back after such crisis
prices_bounce <- tabPanel (
  "Consumption trend after crisis",
  sidebarLayout(
    ## Side
    sidebarPanel(
      radioButtons(
        inputId = "radioInput",
        label = h3("Which crisis?"),
        choices = list("70s energy crisis" = 1, "80s energy glut" = 2,
                       "Great recession" = 3)
      )
    ),
    ## Main
    mainPanel(
      
    )
  )
)

## Yashasvi here is where your summary goes
page_sum <- tabPanel (
  "Summary"
)

ui <- navbarPage (
  "Crisis driven prices",
  introduction,
  first,
  prices_demand,
  prices_bounce,
  page_sum
)