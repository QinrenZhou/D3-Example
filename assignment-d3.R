#-----------------------Import libraries---------------------------------
library(arrow)
library(r2d3)
library(dplyr)
#-----------------------Munging data--------------------------------------
dat<-arrow::read_parquet("power.parquet")
head(dat)
str(dat)
dat<-dat[,-1]

dat2<-dat %>%
  group_by(Date) %>%
  summarise(Global_active_power = sum(Global_active_power))

head(dat2)
tail(dat2)
str(dat2)
dat2$Date=as.Date(dat2$Date)

#-----------------------d3--------------------------------------------------
r2d3::r2d3("assignment-d3.js", data=dat2)

