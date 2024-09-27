#### Preamble ####
# Purpose: Cleans the data
# Author: He Tianning
# Date: 24 September 2024 
# Contact: tianning.he@mail.utoronto.ca
# License: MIT
# Pre-requisites: have the dataset


#### Workspace setup ####
library(tidyverse)

#### Clean the data that we downloaded ####
data <- read_csv("data/raw_data/raw-ferry-ticket-counts.csv")

cleaned_data <-
  data |>
  select(-`_id`)|> # remove the id variable
  tidyr::drop_na() # remove rows with missing value

#### Save the data that we already cleaned ####
write_csv(cleaned_data, "data/analysis_data/clean-ferry-ticket-counts.csv")
