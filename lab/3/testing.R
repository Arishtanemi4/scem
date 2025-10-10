library(dplyr)
library(nycflights13)
library(ggplot2)
library(tidyverse)

head(flights)

delayed_flights_2h <- flights %>%
  filter(dep_delay > 0, dep_delay < 120) %>%
  sample_frac(0.1)

ggplot2::geom_histogram(data = delayed_flights_2h, axis(x = dep_delay))