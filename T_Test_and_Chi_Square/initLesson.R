# Load the synthetic criminology dataset package
library(dplyr) # Only load if needed for lesson code
library(crimsyndata)

# Load datasets from the package into the lesson environment
data("crime_stats_ghent", package = "crimsyndata")
data("neighborhood_index", package = "crimsyndata")

crime_stats_ghent <- crime_stats_ghent
neighborhood_index <- neighborhood_index
