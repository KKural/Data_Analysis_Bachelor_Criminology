# Load the synthetic criminology dataset package
library(dplyr) # Only load if needed for lesson code
library(crimsyndata)

# Load datasets from the package into the lesson environment
data("crime_stats_ghent", package = "crimsyndata")
data("neighborhood_index", package = "crimsyndata")
data("fear_of_crime_survey", package = "crimsyndata")
data("police_effort_index", package = "crimsyndata")
data("crime_journal_notes", package = "crimsyndata")

# If you want a local copy for manipulation:
df_crime_stats_ghent <- crime_stats_ghent
