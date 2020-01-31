#' @title House Sales in King County
#' @name kc_housing
#'
#' @description
#' Regression task to predict house sale prices for
#' King County, including Seattle, between May 2014 and May 2015.
#'
#' Contains 19 features and 21613 observations.
#' Target column is `"price"`.
#'
#' @section Pre-processing:
#' * Id column has been removed.
#' * Dates in column `"date"` have been converted from strings to [POSIXct].
#' * Values `0` in feature `"yr_renovated"` have been replaced with `NA`.
#' * Values `0` in feature `"sqft_basement"` have been replaced with `NA`.
#' * Feature `"waterfront"` has been converted to logical.
#'
#' @source \url{https://www.kaggle.com/harlfoxem/housesalesprediction}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("kc_housing", package = "mlr3data")
#' str(kc_housing)
NULL
