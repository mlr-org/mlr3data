library("mlr3oml")

odata = OMLData$new(41021)
moneyball = odata$data
to_integer = c("Year", "RS", "RA", "W")
moneyball[, (to_integer) := lapply(.SD, as.integer), .SDcols = to_integer]
data.table::setnames(moneyball, new = tolower(colnames(moneyball)))

data.table::setDF(moneyball)

usethis::use_data(moneyball, overwrite = TRUE, compress = "xz")
