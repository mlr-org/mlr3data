#' @title Bike Sharing Demand
#'
#' @name bike_sharing
#' @aliases mlr_tasks_bike_sharing
#'
#' @description
#' Regression data to predict the total count of bikes rented. Contains
#' 13 features and 17379 observations. Target column is `"count"`.
#'
#' @section Pre-processing:
#' * All columns have been renamed.
#' * `instant`, `"registered"` and `"casual"` column have been removed.
#' * `"season"` and `"weather"` have been converted to `factor()`.
#' * `"holiday"` and `"working_day"` have been converted to `logical()`.
#'
#' @source \url{https://archive.ics.uci.edu/ml/datasets/bike+sharing+dataset}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("bike_sharing", package = "mlr3data")
#' str(bike_sharing)
NULL

get_bike_sharing_task = function() {
  b = as_backend("bike_sharing")
  task = mlr3::TaskRegr$new("bike_sharing", b, target = "count", label = "Bike Sharing Demand")
  b$hash = task$man = "mlr3data::mlr_tasks_bike_sharing"
  task
}
