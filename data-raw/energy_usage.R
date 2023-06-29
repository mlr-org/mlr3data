requireNamespace("rprojroot")
requireNamespace("data.table")
root = rprojroot::find_package_root_file()

energy_usage = data.table::fread(file.path(root, "data-raw", "energy_usage.csv.bz2"), stringsAsFactors = TRUE)
usethis::use_data(energy_usage, overwrite = TRUE, compress = "xz")
