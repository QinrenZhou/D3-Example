#-----------------------Import libraries---------------------------------
library(arrow)
library(r2d3)
#-----------------------Munging data--------------------------------------
dat<-arrow::read_parquet("power.parquet")
head(dat)
str(dat)
dat<-dat[,-1]

dat2<-