setwd("/Users/huwei/Dropbox/On_Local/1.Study/0.CityU ISP/Semester B 201718/IS6400 Business Data Analysis/StkPreHL/StkPreHL/NewsAggregatorDataset")
# remove all the variables in the environment
rm(list=ls())
#==========================================#
# import csv file 
#==========================================#
data<-read.table("newsCorpora.csv",header = F, sep="\t", fill = T, col.names=paste0("C", 1:8), fileEncoding = "UTF-8")


