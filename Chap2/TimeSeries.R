library("forecast")
library("zoo")

setwd("C:/Users/adrian.bourcevet/Documents/GitHub/QuantFinance/selfwork/ch1/data")
hp <- read.zoo("UKHP.csv", sep = ",", header = TRUE, format = "%Y-%m", FUN = as.yearmon)
df_hp <- as.data.frame(hp)

frequency(hp)

hp_ret <- diff(hp) / lag(hp, k = -1) * 100
