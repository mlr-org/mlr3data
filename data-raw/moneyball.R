library("data.table")
library("OpenML")

moneyball = getOMLDataSet(41021)
moneyball = as.data.table(moneyball$data)
to_integer = c("Year", "RS", "RA", "W")
moneyball[, (to_integer) := lapply(.SD, as.integer), .SDcols = to_integer]
setnames(moneyball, old = colnames(moneyball), new = tolower(colnames(moneyball)))

setDF(moneyball)

usethis::use_data(moneyball, overwrite = TRUE)
