#### Preamble ####
# Purpose: Simulates data for Toronto Island Ferry Ticket
# Author: He Tianning
# Date: 24 September 2024 
# Contact: tianning.he@mail.utoronto.ca
# License: MIT
# Pre-requisites: install R



#### Workspace setup ####
library(tidyverse)


#### Simulate data ####
# Set seed
set.seed(100)

# Function to create random timestamps
generate_timestamps <- function(n, start_time = "2024-09-24 00:00:00", interval_minutes = 15) {
  start_time <- as.POSIXct(start_time)
  return(start_time + seq(0, by = interval_minutes * 60, length.out = n))
}

# Number of rows what we need to  simulate
n <- 1000

# Simulate data of Toronto Ferry Tickets
simulated_data <- tibble(
  `_id` = 1:n,
  `Timestamp` = generate_timestamps(n, start_time = "2024-09-24 00:00:00", interval_minutes = 15),
  `Redemption Count` = sample(0:20, n, replace = TRUE),  # random integer values from 0 to 20
  `Sales Count` = sample(0:50, n, replace = TRUE)       # random integer values from 0 to 50
)

# show the simulated data
head(simulated_data)
write_csv(simulated_data, "data/sim_data/sim-ferry-ticket-counts.csv")



