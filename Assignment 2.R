getwd()
library(here)
us <- read_csv(here("Git Repos /BIS-244-gosnearmaggie/COVID-19-project/covid-19-data/us-states.csv"))
library(tidyverse)

PA_df <-filter(us,state=="Pennsylvania")
View(PA_df)
n <- length(PA_df$date)
PA_df$incr_cases <-1

View(PA_df)

for (i in 2:n) {
  PA_df$incr_cases[i] <- (PA_df$cases[i]-PA_df$cases[i-1])
}

View (PA_df)

PA_df$incr_deaths <- 0

for (i in 2:n) {
  PA_df$incr_deaths[i] <-(PA_df$deaths[i]-PA_df$deaths[i-0])
}

View(PA_df)

check <- sd(PA_df$incr_cases,na.rm=FALSE)
print(check)
