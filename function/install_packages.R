# All the packages from the rocker/geospatial image are already included.
# The full list is https://github.com/rocker-org/geospatial

# For some reason `geojsonio` is not yet in rocker/geospatial. 
# Remove from below if you don't need it.
# install.packages("config",repos="http://cran.us.r-project.org")
# library(config)
packages = c('ranger', 'RANN', 'httr', 'caret', 'spaMM')

if (!require("pacman")) {
  install.packages("pacman",
    repos = "https://cran.rstudio.com"
  )
}

pacman::p_load(char = packages) 

