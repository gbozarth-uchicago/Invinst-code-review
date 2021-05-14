#
# Author: GJB
# Maintainer(s): GJB, 
#
# -----------------------------------------------------------
# invinst-code-review/import/src/import.R
#

require(pacman)
p_load(readxl, readr, dplyr)
require(here)

files <- list(
  input = here::here("import/input", "victim_export.xlsx"),
  
  output = here::here("import/output", "victim_export.csv")
)

read_data <- function(){
    read_excel(files$input) 
}

main <- function(){
  read_data() %>%
    write_delim(files$output, delim = "|")
}

main ()


