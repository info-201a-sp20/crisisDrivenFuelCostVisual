## Yashasvi fill your introduction here
introduction <- tabPanel (
  "Introduction"
)

## Hearim here is your interactive page where you spot crisis
## dont forget to change the name to however you see fit
first <- tabPanel (
  "Hearim's page"
)

## Consumption
demand <- tabPanel (
  "Consumption",
  h2("Coal consumption graph"),
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
        inputId = "radioInput",
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

## Yashasvi here is where your summary goes
page_sum <- tabPanel (
  "Summary"
)

ui <- navbarPage (
  "Crisis driven prices",
  introduction,
  first,
  demand,
  demand_bounce,
  page_sum
)