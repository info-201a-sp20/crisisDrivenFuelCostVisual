## Yashasvi fill your introduction here
introduction <- tabPanel (
  "Introduction"
)

## Hearim here is your interactive page where you spot crisis
## dont forget to change the name to however you see fit
first <- tabPanel (
  "Hearim's page"
)

## Prices and demand
prices_demand <- tabPanel (
  "Prices and demand"
)

## How prices bounce back after such crisis
prices_bounce <- tabPanel (
  "Prices bounce back"
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