library("mlr3oml")

odata = OMLData$new(1480)
ilpd = odata$data
data.table::setnames(ilpd, c("age", "gender", "total_bilirubin", "direct_bilirubin", "alkaline_phosphatase",
  "alanine_transaminase", "aspartate_transaminase", "total_protein", "albumin", "albumin_globulin_ratio", "diseased"
))
levels(ilpd$diseased) = c("yes", "no")

data.table::setDF(ilpd)

usethis::use_data(ilpd, overwrite = TRUE)
