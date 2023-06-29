requireNamespace("rprojroot")
requireNamespace("data.table")
root = rprojroot::find_package_root_file()

ames_housing = data.table::fread(file.path(root, "data-raw", "ames_housing.csv.bz2"), stringsAsFactors = TRUE)
usethis::use_data(ames_housing, overwrite = TRUE, compress = "xz")
