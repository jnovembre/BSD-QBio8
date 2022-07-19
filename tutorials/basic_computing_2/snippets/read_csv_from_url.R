# Download a .csv.gz file from the Internet, and import in into R as a
# data frame.
storm_event_data_url <-
  paste("https://www.ncei.noaa.gov/pub/data/swdi/stormevents/csvfiles",
        "StormEvents_details-ftp_v1.0_d1990_c20210803.csv.gz", sep = "/")
filename <- tempfile()
download.file(storm_event_data_url, filename)
storm_event_data <- read.csv(filename, stringsAsFactors = FALSE)
unlink(filename)
