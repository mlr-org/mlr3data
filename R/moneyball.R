#' @title Major League Baseball Statistics 1962-2012
#'
#' @name moneyball
#' @aliases mlr_tasks_moneyball
#'
#' @description
#' Regression data to predict the number of runs scored.
#' Obtained using the \CRANpkg{OpenML} package.
#'
#' Contains 14 features and 1232 observations.
#' Target column is `"rs"`.
#'
#' @section Pre-processing:
#' * All variable names have been converted from upper case to lower case.
#' * The variables `"year"`, `"rs", `"ra"`, `"w"` have been coerced to integers.
#'
#' @source \url{https://www.openml.org/d/41021}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("moneyball", package = "mlr3data")
#' str(moneyball)
NULL

get_moneyball_task = function() {
  b = as_backend("moneyball")
  task = mlr3::TaskRegr$new("moneyball", b, target = "rs")
  b$hash = task$man = "mlr3data::mlr_tasks_moneyball"
  task
}
