requireNamespace("data.table")
requireNamespace("titanic")

data("titanic_train", package = "titanic")
data("titanic_test", package = "titanic")

titanic = data.table::rbindlist(list(titanic_train, titanic_test), fill = TRUE, use.names = TRUE)

titanic[, PassengerId := NULL]
titanic[, Survived := as.factor(Survived)]
titanic[, Pclass := factor(Pclass, ordered = TRUE)]
titanic[, Sex := as.factor(Sex)]
titanic[!nzchar(Cabin), Cabin := NA_character_]
titanic[!nzchar(Embarked), Embarked := NA_character_]
titanic[, Embarked := as.factor(Embarked)]
setDF(titanic)

usethis::use_data(titanic, overwrite = TRUE)
