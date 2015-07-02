# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Jevin West
# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("/Users/jevinwest/Documents/Teaching/SKKU/Data/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

t.test(P[P$Year==1999,]$Value,P[P$Year==2000,]$Value)

# (2) Precipitation for all countries over time.

means <- tapply(P$Value,P$Year,mean)
plot(x=levels(factor(P$Year)), y=means)
abline(lm(Value ~ Year, data=P))