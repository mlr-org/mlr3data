requireNamespace("data.table")
requireNamespace("titanic")

data("titanic_train", package = "titanic")
data("titanic_test", package = "titanic")

convertCamelCase = function(x) {
  tolower(gsub("((?<=[a-z0-9])[A-Z]|(?!^)[A-Z](?=[a-z]))", "_\\1", x, perl = TRUE))
}

titanic = data.table::rbindlist(list(titanic_train, titanic_test), fill = TRUE, use.names = TRUE)

setnames(titanic, convertCamelCase(colnames(titanic)))
titanic[, passenger_id := NULL]
titanic[, survived := as.factor(survived)]
titanic[, pclass := factor(pclass, ordered = TRUE)]
titanic[, sex := as.factor(sex)]
titanic[!nzchar(cabin), cabin := NA_character_]
titanic[!nzchar(embarked), embarked := NA_character_]
titanic[, embarked := as.factor(embarked)]
setDF(titanic)

usethis::use_data(titanic, overwrite = TRUE)
