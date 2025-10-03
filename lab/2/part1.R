library(dplyr)
library(nycflights13)
library(tidyverse)



flights
head(flights)
# view(flights)

# Q1

large_delays_JFK <- flights %>%
  filter(origin == 'JFK', dep_delay >= 60) %>%
  select(year, month, day, dep_delay, arr_delay, carrier)

head(large_delays_JFK)

# Q2
### large_delays_JFK has 6 variables and 8541 observations


# Q3
large_delays_JFK <- large_delays_JFK[order(-large_delays_JFK$arr_delay),]

head(large_delays_JFK)



airline_lookup <- data.frame(
  carrier = c("AA", "DL", "UA", "B6", "WN"),
  airline_name = c("American Airlines", "Delta", "United Airlines",
                   "JetBlue", "Southwest Airlines"))

head(airline_lookup)


# Q4

X <- large_delays_JFK %>%
  left_join(airline_lookup, by = "carrier") %>%
  select(-carrier) %>% print(n=5)

# Q5

# names(X)[names(X) == 'airline_name'] <- 'airline'

X %>% rename(
  airline = airline_name
  ) %>%
  select(
    airline, dep_delay, arr_delay
    ) %>%
  print(n=7)


# Q6
large_delays_JFK %>%
  inner_join(airline_lookup, by = "carrier") %>%
  select(-carrier) %>% print(n=5)

# Q7
X <- X %>% mutate(
  delay_ratio = arr_delay / dep_delay
)

X %>%
  select(
    airline_name, delay_ratio
    ) %>%
  arrange(desc(delay_ratio)) %>%
  print(n=10)

# Q8
X_grouped <- X %>%
  group_by(airline_name) %>%
  summarise(
    n_flights = n(),
    avg_dep_delay = mean(dep_delay, na.rm = TRUE),
    med_arr_delay = median(arr_delay, na.rm = TRUE),
    max_delay_ratio = max(delay_ratio, na.rm = TRUE)
  ) %>% print()


# Q9
X_null_cnts <- X %>%
  group_by(airline_name) %>%
  summarise(
    nulls_arr_delay = sum(is.na(arr_delay)),
    nulls_dep_delay = sum(is.na(dep_delay)),
    nulls_delay_ratio = sum(is.na(delay_ratio))
  ) %>% print()