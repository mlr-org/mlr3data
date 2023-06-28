url = "https://raw.githubusercontent.com/ja-thomas/extend_ames_housing/main/data/ames_dirty.csv"
ames_housing = data.table::fread(url, stringsAsFactors = TRUE)
usethis::use_data(ames_housing, overwrite = TRUE, compress = "xz")
