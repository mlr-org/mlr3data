#' @title Titanic
#'
#' @name titanic
#' @aliases mlr_tasks_titanic
#'
#' @description
#' Classification data to predict the fate of passengers on the ocean liner "Titanic".
#' Contains 10 features and 1309 observations. Target column is `"Survived"`.
#'
#' @section Pre-processing:
#' * All column names have been changed to `snake_case`.
#' * training and test set have been joined.
#'   Observations of the test set have a missing value in the target column `"survived"`.
#' * Column '"survived"' has been re-encoded to a factor with levels '"yes"' and '"no"'.
#' * Id column has been removed.
#' * Passenger class `"pclass"` has been converted to an ordered factor.
#' * Features `"sex"` and `"embarked"` have been converted to factors.
#' * Empty strings in `"cabin"` and `"embarked"` have been encoded as missing values.
#'
#' @source \CRANpkg{titanic} and \url{https://www.kaggle.com/c/titanic/data}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("titanic", package = "mlr3data")
#' str(titanic)
NULL

get_titanic_task = function() {
  b = as_backend("titanic")
  task = mlr3::TaskClassif$new("titanic", b, target = "survived", positive = "yes", label = "Titanic")
  b$hash = task$man = "mlr3data::mlr_tasks_titanic"
  task
}
