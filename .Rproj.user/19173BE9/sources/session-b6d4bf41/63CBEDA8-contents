#### Preamble ####
# Purpose: Downloads and saves the data from Open data Toronto
# Author: He Tianning
# Date: 24 September 2024
# Contact: tianning.he@mail.utoronto.ca
# License: MIT
# Pre-requisites: None



#### Workspace setup ####
library(opendatatoronto)
library(tidyverse)


#### Download the data from Open Data Toronto####


# get the package
package <- show_package("toronto-island-ferry-ticket-counts")
package

# get all resources for this package
resources <- list_package_resources("toronto-island-ferry-ticket-counts")

# identify datastore resources; by default, Toronto Open Data sets datastore resource format to CSV for non-geospatial and GeoJSON for geospatial resources
datastore_resources <- filter(resources, tolower(format) %in% c('csv', 'geojson'))

# load the first datastore resource as a sample
data <- filter(datastore_resources, row_number()==1) %>% get_resource()
data



#### Save the download data ####

# change the_raw_data to whatever name you assigned when you downloaded it.
write_csv(data, "data/raw_data/raw-ferry-ticket-counts.csv") 
         
