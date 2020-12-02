library("data.table")
library("OpenML")

optdigits = getOMLDataSet(980)
optdigits = as.data.table(optdigits$data)
features = colnames(optdigits)[-65L]
optdigits[, (features) := lapply(.SD, as.integer), .SDcols = features]
setnames(optdigits, old = "binaryClass", new = "binaryclass")

setDF(optdigits)

usethis::use_data(optdigits, overwrite = TRUE)
