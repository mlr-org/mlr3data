library("mlr3oml")

odata = OMLData$new(980)
optdigits = odata$data
optdigits[, odata$feature_names := lapply(.SD, as.integer), .SDcols = (odata$feature_names)]
setnames(optdigits, old = "binaryClass", new = "binaryclass")
setDF(optdigits)

usethis::use_data(optdigits, overwrite = TRUE)
