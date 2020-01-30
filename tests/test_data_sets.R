stopifnotdataset = function(data) {
   stopifnot(
     is.data.frame(data),
     colnames(data) == tolower(colnames(data)),
     colnames(data) == make.names(colnames(data), unique = TRUE)
   )
}

data("kc_housing", package = "mlr3data")
stopifnotdataset(kc_housing)
stopifnot(nrow(kc_housing) == 21613L, ncol(kc_housing) == 20L)

data("titanic", package = "mlr3data")
stopifnotdataset(titanic)
stopifnot(nrow(titanic) == 1309L, ncol(titanic) == 11L)
