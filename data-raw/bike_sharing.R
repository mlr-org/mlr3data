library(data.table)

tmp = tempfile()
download.file("https://archive.ics.uci.edu/ml/machine-learning-databases/00275/Bike-Sharing-Dataset.zip", tmp)
bike_sharing = setDT(read.csv(unz(tmp, filename = "hour.csv"), as.is = TRUE))
bike_sharing = setnames(bike_sharing, c("instant", "date", "season", "year", "month", "hour", "holiday", "weekday",
  "working_day", "weather", "temperature", "apparent_temperature", "humidity", "windspeed", "casual", "registered",
  "count"))

bike_sharing[, holiday := as.logical(holiday)]
bike_sharing[, working_day := as.logical(working_day)]
bike_sharing[, season := factor(season, labels = c("winter", "spring", "summer", "fall"))]
bike_sharing[, weather :=  as.factor(bike_sharing$weather)]

bike_sharing = bike_sharing[, .SD, .SDcols = !c("instant", "casual", "registered")]

usethis::use_data(bike_sharing, overwrite = TRUE, compress = "xz")
