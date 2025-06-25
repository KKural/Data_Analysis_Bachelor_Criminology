# Load the synthetic criminology dataset package
library(dplyr) # Only load if needed for lesson code
library(crimsyndata)

# Load datasets from the package into the lesson environment
data("crime_stats_ghent", package = "crimsyndata")
data("neighborhood_index", package = "crimsyndata")
data("fear_of_crime_survey", package = "crimsyndata")
data("police_effort_index", package = "crimsyndata")
data("crime_journal_notes", package = "crimsyndata")

crime_stats_ghent <- crime_stats_ghent
neighborhood_index <- neighborhood_index
fear_of_crime_survey <- fear_of_crime_survey
police_effort_index <- police_effort_index
crime_journal_notes <- crime_journal_notes