as_backend = function(id) {
  # this looks a bit funny, but is required because of strange
  # behavior with roxygen2/pkgload
  ee = new.env(hash = FALSE, parent = emptyenv())
  data(list = id, package = "mlr3data", envir = ee)
  mlr3::as_data_backend(ee[[id]])
}

# copied from mlr3misc to avoid the dependency
cite_bib = function(key) {
  stopifnot(length(key) == 1L, is.character(key))
  package = "mlr3data"

  if (!requireNamespace("bibtex", quietly = TRUE)) {
    warning(sprintf("Could not load package 'bibtex' to parse citation '%s'", key))
    return(sprintf("bibtex:%s", key))
  }

  path = system.file("references.bib", package = package)
  if (!file.exists(path)) {
    warning(sprintf("Bibtex file '%s' for package '%s' does not exist", path, package))
    return(sprintf("bibtex:%s", key))
  }

  bib = bibtex::read.bib(path)

  if (!(key %in% names(bib))) {
    warning(sprintf("Key '%s' not found in references.bib of package '%s'", key, package))
    return(sprintf("bibtex:%s", key))
  }

  paste0(tools::toRd(bib[[key]]), "\n")
}
