#### Preamble ####
# Purpose: Tests data
# Author: He Tianning
# Date: 24 September 2024
# Contact: tianning.he@mail.utoronto.ca
# License: MIT
# Pre-requisites: have the data and cleaned it



#### Workspace setup ####
library(tidyverse)


#### Test data ####
simulated_data <- read_csv("data/sim_data/sim-ferry-ticket-counts.csv")
# Test 1: Check if number of rows is 1000
if (nrow(simulated_data) == 1000) {
  cat("Test 1 Passed: Correct number of rows\n")
} else {
  cat("Test 1 Failed: Incorrect number of rows\n")
}

# Test 2: Check if 'Redemption Count' and 'Sales Count' are non-negative
if (all(simulated_data$`Redemption Count` >= 0) &&
  all(simulated_data$`Sales Count` >= 0)) {
  cat("Test 2 Passed: 'Redemption Count' and 'Sales Count' are within the expected range\n")
} else {
  cat("Test 2 Failed: 'Redemption Count' or 'Sales Count' is out of range\n")
}

# Test 3: Check if 'Timestamp' column is in correct POSIXct time format
# Attempt to convert the 'Timestamp' column to POSIXct and check for any conversion failures
timestamps <- as.POSIXct(simulated_data$Timestamp, format = "%Y-%m-%dT%H:%M:%S", tz = "UTC")

if (all(!is.na(timestamps))) {
  cat("Test 3 Passed: All 'Timestamp' values are valid POSIXct time variables\n")
} else {
  cat("Test 3 Failed: Some 'Timestamp' values are not valid POSIXct time variables\n")
}
