data("titanic", package = "mlr3data")

stopifnot(
  is.data.frame(titanic),
  nrow(titanic) == 1309L,
  ncol(titanic) == 11L
)

