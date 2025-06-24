# Load the synthetic criminology dataset package
library(dplyr)
if (!require(crimsyndata)) remotes::install_github("KKural/crimsyndata")
library(crimsyndata)
if (!require(flextable)) install.packages("flextable")
library(flextable)

# Load datasets from the package into the lesson environment
data("crime_stats_ghent")
data("neighborhood_index")
data("fear_of_crime_survey")
data("police_effort_index")
data("crime_journal_notes")
