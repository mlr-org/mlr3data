library("data.table")

data("penguins", package = "palmerpenguins")
penguins = as.data.table(penguins)
setnames(penguins,
  old = c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g"),
  new = c("bill_length",    "bill_depth",    "flipper_length",    "body_mass")
)

setDF(penguins)
usethis::use_data(penguins, overwrite = TRUE)
