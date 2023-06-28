requireNamespace("rprojroot")
requireNamespace("data.table")
requireNamespace("anytime")

root = rprojroot::find_package_root_file()

kc_housing = data.table::fread(file.path(root, "data-raw", "kc_housing.csv.bz2"))
kc_housing[, id := NULL]
kc_housing[, date := anytime::anytime(date)]
kc_housing[yr_renovated == 0, yr_renovated := NA_integer_]
kc_housing[sqft_basement == 0, sqft_basement := NA_integer_]
kc_housing[, waterfront := as.logical(waterfront)]
data.table::setDF(kc_housing)

usethis::use_data(kc_housing, overwrite = TRUE, compress = "xz")
