## remember to restart R here!
library(here)
library(tidyverse)
## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
ipt <- read.csv (here("data", "installed-packages.csv"))

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
library(dbplyr)
apt <- ipt %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
write.csv(apt, here("data", "add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))
