library(readr)
df <- read_csv("~/Downloads/Chevron_2021_Datathon_Challenge/filesForStartOfDatathon/training.csv")
df
houston

df$dayOfTheWeek <- df$dayOfTheYear %% 7

# HOUSTON
houston <- df[df$StoreNumber == 1000,]
fit <- lm(GrossSoldQuantity ~ cos(dayOfTheWeek)+cos(`3HourBucket`), data = houston)
summary(fit)

hou <- round(fit$fitted.values, digits = 0)
hou
tail(hou, 8)

# AUSTIN
austin <- df[df$StoreNumber == 2000,]
fit2 <- lm(GrossSoldQuantity ~ cos(dayOfTheWeek)+cos(`3HourBucket`), data = austin)
summary(fit2)

aus <- round(fit2$fitted.values, digits = 0)
tail(aus, 8)

# COLLEGE STATION
collegestation <- df[df$StoreNumber == 3000,]
fit3 <- lm(GrossSoldQuantity ~ cos(dayOfTheWeek)+cos(`3HourBucket`), data = collegestation)
summary(fit3)

cs <- round(fit3$fitted.values, digits = 0)
tail(cs, 8)

# SAN ANTONIO
sanantonio <- df[df$StoreNumber == 4000,]
fit4 <- lm(GrossSoldQuantity ~ cos(dayOfTheWeek)+cos(`3HourBucket`), data = sanantonio)
summary(fit4)

sa <- round(fit4$fitted.values, digits = 0)
tail(sa, 8)
