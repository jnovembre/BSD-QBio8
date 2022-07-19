library(readr)
library(ggplot2)
storms <- read_csv("StormEvents_details-ftp_v1.0_d1974_c20210803.csv.gz")
class(storms) <- "data.frame"
storms <- transform(storms,date = as.Date(paste(1974,BEGIN_YEARMONTH - 197400,
                                                     BEGIN_DAY,sep = "-")))
storms <- transform(storms,dayofyear = as.numeric(format(date,"%j")))
tornadoes <- subset(storms,EVENT_TYPE == "Tornado")
dat <- as.data.frame(table(tornadoes$dayofyear))
names(dat) <- c("day","count")
dat <- transform(dat,day = as.numeric(as.character(day)))
p <- qplot(x = dat$day,y = dat$count,geom = "line",
           xlab = "day",ylab = "events") +
  theme_classic()
print(p)
