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

# initLesson.R — runs before the lesson starts

# 0. Patch flextable if it’s missing its dictionary
if (requireNamespace("flextable", quietly = TRUE)) {
  dict_path <- system.file("extdata", "dictionary.tsv", package = "flextable")
  if (dict_path == "" || !file.exists(dict_path)) {
    pf <- path.package("flextable")
    dir.create(file.path(pf, "extdata"), recursive = TRUE, showWarnings = FALSE)
    writeLines("en\tcolour\tcolor\n",
               file.path(pf, "extdata", "dictionary.tsv"))
  }
}

# 1. Locate swirl’s Courses directory
swirl_dir     <- swirl:::swirl_courses_dir()
lesson_folder <- file.path(swirl_dir,
                           "Data Analysis - Bachelor criminolgy",
                           "T_Test_and_Chi_Square")
setwd(lesson_folder)

# 2. Welcome message
message("\n📊 Datasets loaded. Let's get started!")

# 3. Read and parse the YAML
raw_yaml <- readLines("lesson.yaml", warn = FALSE)
if (any(Encoding(raw_yaml) == "unknown")) {
  raw_yaml <- readLines("lesson.yaml", encoding = "UTF-8", warn = FALSE)
}
lesson <- yaml::yaml.load(raw_yaml)
