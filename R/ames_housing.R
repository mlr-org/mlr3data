#' @title House Sales in Ames, Iowa
#'
#' @name ames_housing
#' @aliases mlr_tasks_ames_housing
#'
#' @description
#' Regression task to predict house sale prices for Ames, Iowa.
#'
#' Contains 80 features and 2930 observations.
#' Target column is `"Sale_Price"`.
#'
#' @docType data
#' @keywords data
#' @examples
#' data("ames_housing", package = "mlr3data")
#' str(ames_housing)
NULL

get_ames_housing_task = function() {
  b = as_backend("ames_housing")
  task = mlr3::TaskRegr$new("ames_housing", b, target = "Sale_Price", label = "Ames House Sales")
  b$hash = task$man = "mlr3data::mlr_tasks_ames_housing"
  task
}
