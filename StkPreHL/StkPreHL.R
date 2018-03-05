# remove all the variables in the environment
rm(list=ls())
#==========================================#
# import csv file 
#==========================================#
data<-read.csv("uci-news-aggregator.csv",fill=T, sep=",", stringsAsFactors = FALSE)
class(data)
# [1] "data.frame"
dim(data)
# [1] 422419      8
names(data)
# [1] "ID"        "TITLE"     "URL"       "PUBLISHER" "CATEGORY"  "STORY"     "HOSTNAME" 
# [8] "TIMESTAMP"
attach(data)
head(ID,20)
head(TITLE)
head(URL)
head(data)

#========
# https://www.epochconverter.com/ for reference
#install.packages("anytime")
# library(anytime)
# anytime(TIMESTAMP[1]/1000)
# print(TIMESTAMP[1], digits = 16)
# [1] 1394470370698
# GMT: Monday, March 10, 2014 4:52:50.698 PM
# > as.POSIXct(TIMESTAMP[1]/1000, origin="1970-01-01")
# [1] "2014-03-11 00:52:50 CST"
mytime <- as.POSIXct(TIMESTAMP/1000, origin="1970-01-01", tz = "GMT")
class(mytime)
# [1] "POSIXct" "POSIXt"
range(mytime)
# [1] "2014-03-10 16:52:50 GMT" "2014-08-28 12:33:11 GMT"

# ====
class(CATEGORY)
table(CATEGORY)
# CATEGORY
# b      e      m      t 
# 115967 152469  45639 108344
class(CATEGORY)
# [1] "character"
# Freq plot
barplot(prop.table(table(CATEGORY)))


#===
story_b = STORY[CATEGORY == "b"]
tsb <- as.data.frame(table(story_b))
dim(tsb)
# [1] 2019    2
story_e = STORY[CATEGORY == "e"]
tse <- as.data.frame(table(story_e))
dim(tse)
# [1] 2075    2
story_m = STORY[CATEGORY == "m"]
tsm <- as.data.frame(table(story_m))
dim(tsm)
# [1] 1347    2
story_t = STORY[CATEGORY == "t"]
tst <- as.data.frame(table(story_t))
dim(tst)
# [1] 1789    2
#=======
DJIA<-read.csv("DJIA_table.csv",fill=T, sep=",", stringsAsFactors = FALSE)
dim(DJIA)
# [1] 1989    7
names(DJIA)
# [1] "Date"      "Open"      "High"      "Low"       "Close"     "Volume"    "Adj.Close"
attach(DJIA)
#==========
class(Date)
range(Date)
# [1] "2008-08-08" "2016-07-01"
# ======
summary(Close)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 6547   10913   13026   13463   16478   18312
log_Close <- log(Close)
summary(log_Close)
# Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
# 8.787   9.298   9.475   9.479   9.710   9.815
log_Return<-diff(log_Close, differences = 1)
summary(log_Return)
# Min.    1st Qu.     Median       Mean    3rd Qu.       Max. 
# -0.1050835 -0.0057316 -0.0005430 -0.0002138  0.0045634  0.0820051 
#
hist(Close, freq=F, main="Close Price (DJIA) Histogram", col=c(2,3), xlab="Close Price")
hist(log_Close, freq=F, main="Log of Close Price (DJIA) Histogram", col=c(2,3), xlab="log(Close Price)")
hist(log_Return, freq=F, main="Log of Return (DJIA) Histogram", col=c(2,3), xlab="log(Return)")
# =====
plot(as.Date(Date), Close, type = "l", xlab = "Date", ylab = "Close Price")
plot(as.Date(Date), log_Close, type = "l", xlab = "Date", ylab = "log(Close Price)")
plot(as.Date(Date[-1]), log_Return, type = "l", xlab = "Date", ylab = "log(Return)")
