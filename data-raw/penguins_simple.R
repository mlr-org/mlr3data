library(mlr3)
library(mlr3pipelines)
library(data.table)

task = tsk("penguins")
ids = complete.cases(task$data())
task$filter(which(ids))
graph = po("encode", method = "one-hot")
task = graph$train(list(task))$output
penguins_simple = task$data()
setDF(penguins_simple)

usethis::use_data(penguins_simple, overwrite = TRUE)
