#' @title Optical Recognition of Handwritten Digits
#'
#' @name optdigits
#' @aliases mlr_tasks_optdigits
#'
#' @description
#' Classification data to predict handwritten digits.
#' Obtained using the \CRANpkg{OpenML} package.
#'
#' Binarized version of the original data set. The multi-class target column has been converted to
#' a two-class nominal target column by re-labeling the majority class as positive (`"P"`) and all
#' others as negative (`"N"`). Originally converted by Quan Sun.
#'
#' Contains 64 features and 5620 observations.
#' Target column is `"binaryclass"`.
#'
#' @section Pre-processing:
#' * All feature variables `"input1"`, ..., `"input64"` (number of on pixels in each block) have
#'   been coerced to integers.
#' * The target variable has been renamed from `"binaryClass"` to `"binaryclass"`.
#'
#' @source \url{https://www.openml.org/d/980}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("optdigits", package = "mlr3data")
#' str(optdigits)
NULL

get_optdigits_task = function() {
  b = as_backend("optdigits")
  task = mlr3::TaskClassif$new("optdigits", b, target = "binaryclass", positive = "P")
  b$hash = task$man = "mlr3data::mlr_tasks_optdigits"
  task
}
