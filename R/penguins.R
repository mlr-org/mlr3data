#' @title Palmer Penguins
#'
#' @name penguins
#' @aliases mlr_tasks_penguins
#'
#' @description
#' Classification data to predict the species of penguins from the \CRANpkg{palmerpenguins} package
#' (CRAN version 0.1.0).
#' Promoted as an alternative to the [iris data set][iris].
#'
#' @section Pre-processing:
#' * The unit have been removed from the column names.
#'   Lengths are given in millimeters (mm), weight in gram (g).
#'
#' @source \CRANpkg{palmerpenguins}
#'
#' @references
#' `r tools::toRd(bibentries["gorman2014"])`
#'
#' \url{https://github.com/allisonhorst/palmerpenguins}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("penguins", package = "mlr3data")
#' str(penguins)
NULL

get_penguins_task = function() {
  b = as_backend("penguins")
  task = mlr3::TaskClassif$new("penguins", b, target = "species")
  b$hash = task$man = "mlr3data::mlr_tasks_penguins"
  task
}
