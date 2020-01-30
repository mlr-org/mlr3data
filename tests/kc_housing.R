data("kc_housing", package = "mlr3data")

stopifnot(
  is.data.frame(kc_housing), 
  nrow(kc_housing) == 21613L,
  ncol(kc_housing) == 20L
)
