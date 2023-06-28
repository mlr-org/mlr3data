library("mlr3oml")

odata = OMLData$new(980)
optdigits = odata$data
optdigits[, odata$feature_names := lapply(.SD, as.integer), .SDcols = (odata$feature_names)]
data.table::setnames(optdigits, old = "binaryClass", new = "binaryclass")
data.table::setDF(optdigits)

usethis::use_data(optdigits, overwrite = TRUE, compress = "xz")
