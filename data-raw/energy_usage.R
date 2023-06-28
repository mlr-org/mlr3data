url = "https://raw.githubusercontent.com/ja-thomas/extend_ames_housing/main/data/energy_usage.csv"
energy_usage = data.table::fread(url, stringsAsFactors = TRUE)
usethis::use_data(energy_usage, overwrite = TRUE, compress = "xz")
