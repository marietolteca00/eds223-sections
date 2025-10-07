# Install libraries
library(here)
library(janitor)
library(tidyverse)
library(sf)
library(kableExtra)

## Load Data
# R ead in the gdw.csv file as gdw_df (and point to the filepath with help of here())
# Use the |> or %>% operator to pipe your read_csv() output to clean_names()

gdw_df <- read_csv(here("data","gdw.csv")) %>% 
  # Converting variable names to lower snake case
  clean_names()

## Data Exploration
head(gdw_df, n=10) %>% 
  kable()
