## code to prepare `DATASET` dataset goes here

library(tidyevers)
library(here)
library(janitor)
library(devtools)

schooldataset<-read.delim(here("data-raw","school-results.csv"),sep=";") %>%
  clean_names() %>%
  select(year:gender,sub_total_students)

usethis::use_data(schooldataset, overwrite = TRUE)
