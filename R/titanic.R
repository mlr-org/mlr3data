#' @title Titanic
#' @name titanic
#'
#' @description
#' Classification data to predict the fate of passengers on the ocean liner "Titanic".
#' Contains 10 features and 1309 observations. Target column is `"Survived"`.
#'
#' @section Pre-processing:
#' * training and test set have been joined.
#'   Observations of the test set have a missing value in the target column `"Survived"`.
#' * Id column has been removed.
#' * Passenger class `"Pclass"` has been converted to an ordered factor.
#' * Features `"Sex"` and `"Embarked"` have been converted to factors.
#' * Empty strings in `"Cabin"` and `"Embarked"` have been encoded as missing values.
#'
#'
#' @source \CRANpkg{titanic} and \url{https://www.kaggle.com/c/titanic/data}
#' @docType data
#' @keywords data
#' @examples
#' data("titanic", package = "mlr3data")
#' str(titanic)
NULL
