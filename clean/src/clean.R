#
# Author: GJB
# Maintainer(s): GJB, 
#
# -----------------------------------------------------------
# invinst-code-review/clean/src/clean.R
#

require(pacman)
p_load(readxl, readr, dplyr, tidyr, tidyverse, qdap)
require(here)

files <- list(
  input = here::here("import/output", "victim_export.csv"),
  
  output = here::here("clean/output", "victim_export.csv")
)

read_data <- function(){
  read_delim(files$input, delim = "|") 
}

main <- function(){
  read_data() %>%
    separate(COMPLAINT_DATE, sep="-", into = c("DAY", "MONTH", "YEAR")) %>%
    mutate(YEAR = paste('20', YEAR, sep = "")) %>%
    mutate(RACE = replace(RACE, RACE == "SPANISH (DO NOT USE)", "HISPANIC")) %>%
    mutate(RACE = replace(RACE, RACE == "WHITE HISPANIC", "HISPANIC")) %>%
    mutate(RACE = replace(RACE, RACE == "BLACK HISPANIC", "BLACK")) %>%
    mutate_all(na_if, "")
}

main ()



 
