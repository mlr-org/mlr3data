library(mlr3data)

stopifnotdataset = function(data) {
  stopifnot(
    is.data.frame(data),
    colnames(data) == tolower(colnames(data)),
    colnames(data) == make.names(colnames(data), unique = TRUE),
    is.integer(attr(data, "row.names"))
  )
}

data("kc_housing", package = "mlr3data")
stopifnotdataset(kc_housing)
stopifnot(nrow(kc_housing) == 21613L, ncol(kc_housing) == 20L)

data("titanic", package = "mlr3data")
stopifnotdataset(titanic)
stopifnot(nrow(titanic) == 1309L, ncol(titanic) == 11L)

data("optdigits", package = "mlr3data")
stopifnotdataset(optdigits)
stopifnot(nrow(optdigits) == 5620L, ncol(optdigits) == 65L)

data("moneyball", package = "mlr3data")
stopifnotdataset(moneyball)
stopifnot(nrow(moneyball) == 1232L, ncol(moneyball) == 15L)



if (requireNamespace("mlr3")) {
  stopifnot(inherits(mlr3::tsk("kc_housing"), "TaskRegr"))
  stopifnot(inherits(mlr3::tsk("titanic"), "TaskClassif"))
  stopifnot(inherits(mlr3::tsk("optdigits"), "TaskClassif"))
  stopifnot(inherits(mlr3::tsk("moneyball"), "TaskRegr"))
}
