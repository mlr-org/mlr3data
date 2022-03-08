#' @title Simplified Palmer Penguins Data Set
#'
#' @name penguins_simple
#' @aliases mlr_tasks_penguins_simple
#'
#' @description
#' Classification data to predict the species of penguins from the \CRANpkg{palmerpenguins} package, see [palmerpenguins::penguins].
#' A better alternative to the [iris data set][iris].
#'
#' @section Pre-processing:
#' * The unit of measurement have been removed from the column names.
#'   Lengths are given in millimeters (mm), weight in gram (g).
#' * Observations with missing values have been removed.
#' * Factor variables are one-hot encoded.
#'
#' @source \CRANpkg{palmerpenguins}
#'
#' @references
#' `r format_bib("gorman2014")`
#'
#' \url{https://github.com/allisonhorst/palmerpenguins}
#'
#' @docType data
#' @keywords data
#' @examples
#' data("penguins_simple", package = "mlr3data")
#' str(penguins_simple)
NULL

get_penguins_simple_task = function() {
  b = as_backend("penguins_simple")
  task = mlr3::TaskClassif$new("penguins", b, target = "species", label = "Simplified Palmer Penguins")
  b$hash = task$man = "mlr3data::mlr_tasks_penguins_simple"
  task
}
