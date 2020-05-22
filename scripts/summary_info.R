## Summary information from a dataframe

## Takes in a dataframe, 
get_summary_info <- function(df) {
  result <- list()
  result$num_rows <- nrow(df)
  result$num_cols <- ncol(df)
  result$num_countries <- length(unique(df[["Entity"]]))
  result$years <- unique(df[["Year"]])
  result$most_consumption_coal <- max(df[["Coal"]], na.rm = TRUE)
  result$most_consumption_gas <- max(df[["Gas"]], na.rm = TRUE)
  result$most_consumption_oil <- max(df[["Oil"]], na.rm = TRUE)
  return(result)
}
