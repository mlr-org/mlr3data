#' @title Indian Liver Patient Dataset
#'
#' @name ilpd
#' @aliases mlr_tasks_ilpd
#'
#' @description
#' Classification data to predict whether or not a person is a liver patient.
#' Obtained using the \CRANpkg{mlr3oml} package. Contains 538 observations and 10
#' features. Target column is `"diseased"`.
#'
#' @section Pre-processing:
#' * All variables have been renamed.
#' * The target variable has been re-encoded to `"yes"` and `"no"`.
#'
#' @source \url{https://www.openml.org/d/1480}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("ilpd", package = "mlr3data")
#' str(ilpd)
NULL

get_ilpd_task = function() {
  b = as_backend("ilpd")
  task = mlr3::TaskClassif$new("ilpd", b, target = "diseased", positive = "yes", label = "Indian Liver Patient Data")
  b$hash = task$man = "mlr3data::mlr_tasks_ilpd"
  task
}
