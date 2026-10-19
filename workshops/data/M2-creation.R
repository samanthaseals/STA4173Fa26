library(tidyverse)

set.seed(42)

villain_menace <- tibble(
  archetype = rep(c("Dark Lord", "Misunderstood Anti-Hero", "Comically Incompetent"), each = 30),
  menace_rating = c(
    rnorm(30, mean = 75, sd = 10),
    rnorm(30, mean = 68, sd = 10),
    rnorm(30, mean = 45, sd = 10)
  )
)


set.seed(123)

training_performance <- tibble(
  program = rep(c("Classical Hero Academy", "Gritty Realism", "Anime-Inspired Intense"), each = 25),
  performance_score = c(
    rnorm(25, mean = 72, sd = 8),
    rnorm(25, mean = 78, sd = 8),
    rnorm(25, mean = 75, sd = 8)
  )
)


set.seed(456)

binge_watch <- tibble(
  platform = rep(c("StreamFlix", "PrimateMax", "CinemaPlus"), c(27, 27, 26)),
  episodes_watched = c(
    as.integer(rexp(27, rate = 0.15) + 2),
    as.integer(rexp(27, rate = 0.12) + 2),
    as.integer(rexp(26, rate = 0.18) + 2)
  )
)




set.seed(789)

franchise_events <- tibble(
  franchise = rep(c("Galaxian Wars", "Marvel Legends", "Wizard Chronicles", "Dark Knight Studios"), each = 25),
  events_attended = c(
    as.integer(rexp(25, rate = 0.4) + 0),
    as.integer(rexp(25, rate = 0.35) + 0),
    as.integer(rexp(25, rate = 0.6) + 0),
    as.integer(rexp(25, rate = 0.65) + 0)
  )
)

write_csv(binge_watch, "M2-binge_watch.csv")
write_csv(franchise_events, "M2-franchise_events.csv")
write_csv(training_performance, "M2-training_performance.csv")
write_csv(villain_menace, "M2-villain_menace.csv")
