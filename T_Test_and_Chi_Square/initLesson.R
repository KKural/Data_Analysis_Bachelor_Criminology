# Load the synthetic criminology dataset package
library(dplyr)
if (!require(crimsyndata)) remotes::install_github("KKural/crimsyndata")
library(crimsyndata)

# Load datasets from the package into the lesson environment
data("crime_stats_ghent")
data("neighborhood_index")
data("fear_of_crime_survey")
data("police_effort_index")
data("crime_journal_notes")

# Patch flextable if it’s missing its dictionary
if (requireNamespace("flextable", quietly = TRUE)) {
  dict_path <- system.file("extdata", "dictionary.tsv", package = "flextable")
  if (dict_path == "" || !file.exists(dict_path)) {
    pf <- path.package("flextable")
    dir.create(file.path(pf, "extdata"), recursive = TRUE, showWarnings = FALSE)
    writeLines("en\tcolour\tcolor\n",
               file.path(pf, "extdata", "dictionary.tsv"))
  }
}

# Message
message("\n📊 Datasets loaded. Let's get started!")

# Optionally parse lesson.yaml (optional, not required by swirl)
