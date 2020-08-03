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

data("penguins", package = "mlr3data")
stopifnotdataset(penguins)
stopifnot(nrow(penguins) == 344L, ncol(penguins) == 8L)


if (requireNamespace("mlr3")) {
  stopifnot(inherits(mlr3::tsk("kc_housing"), "TaskRegr"))
  stopifnot(inherits(mlr3::tsk("titanic"), "TaskClassif"))
  stopifnot(inherits(mlr3::tsk("penguins"), "TaskClassif"))
}
