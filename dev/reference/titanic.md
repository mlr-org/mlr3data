# Titanic

Classification data to predict the fate of passengers on the ocean liner
"Titanic". Contains 10 features and 1309 observations. Target column is
`"Survived"`.

## Source

[titanic](https://CRAN.R-project.org/package=titanic) and
<https://www.kaggle.com/c/titanic/data>

## Pre-processing

- All column names have been changed to `snake_case`.

- training and test set have been joined. Observations of the test set
  have a missing value in the target column `"survived"`.

- Column '"survived"' has been re-encoded to a factor with levels
  '"yes"' and '"no"'.

- Id column has been removed.

- Passenger class `"pclass"` has been converted to an ordered factor.

- Features `"sex"` and `"embarked"` have been converted to factors.

- Empty strings in `"cabin"` and `"embarked"` have been encoded as
  missing values.

## Examples

``` r
data("titanic", package = "mlr3data")
str(titanic)
#> 'data.frame':    1309 obs. of  11 variables:
#>  $ survived: Factor w/ 2 levels "yes","no": 2 1 1 1 2 2 2 2 1 1 ...
#>  $ pclass  : Ord.factor w/ 3 levels "1"<"2"<"3": 3 1 3 1 3 3 1 3 3 2 ...
#>  $ name    : chr  "Braund, Mr. Owen Harris" "Cumings, Mrs. John Bradley (Florence Briggs Thayer)" "Heikkinen, Miss. Laina" "Futrelle, Mrs. Jacques Heath (Lily May Peel)" ...
#>  $ sex     : Factor w/ 2 levels "female","male": 2 1 1 1 2 2 2 2 1 1 ...
#>  $ age     : num  22 38 26 35 35 NA 54 2 27 14 ...
#>  $ sib_sp  : int  1 1 0 1 0 0 0 3 0 1 ...
#>  $ parch   : int  0 0 0 0 0 0 0 1 2 0 ...
#>  $ ticket  : chr  "A/5 21171" "PC 17599" "STON/O2. 3101282" "113803" ...
#>  $ fare    : num  7.25 71.28 7.92 53.1 8.05 ...
#>  $ cabin   : chr  NA "C85" NA "C123" ...
#>  $ embarked: Factor w/ 3 levels "C","Q","S": 3 1 3 3 3 2 3 3 3 1 ...
```
