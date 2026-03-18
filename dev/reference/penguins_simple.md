# Simplified Palmer Penguins Data Set

Classification data to predict the species of penguins from the
[palmerpenguins](https://CRAN.R-project.org/package=palmerpenguins)
package. A better alternative to the [iris data
set](https://rdrr.io/r/datasets/iris.html).

## Source

[palmerpenguins](https://CRAN.R-project.org/package=palmerpenguins)

## Pre-processing

- The unit of measurement have been removed from the column names.
  Lengths are given in millimeters (mm), weight in gram (g).

- Observations with missing values have been removed.

- Factor variables are one-hot encoded.

## References

Gorman KB, Williams TD, Fraser WR (2014). “Ecological Sexual Dimorphism
and Environmental Variability within a Community of Antarctic Penguins
(Genus Pygoscelis).” *PLoS ONE*, **9**(3), e90081.
[doi:10.1371/journal.pone.0090081](https://doi.org/10.1371/journal.pone.0090081)
.

<https://github.com/allisonhorst/palmerpenguins>

## Examples

``` r
data("penguins_simple", package = "mlr3data")
str(penguins_simple)
#> 'data.frame':    333 obs. of  11 variables:
#>  $ species         : Factor w/ 3 levels "Adelie","Chinstrap",..: 1 1 1 1 1 1 1 1 1 1 ...
#>  $ bill_depth      : num  18.7 17.4 18 19.3 20.6 17.8 19.6 17.6 21.2 21.1 ...
#>  $ bill_length     : num  39.1 39.5 40.3 36.7 39.3 38.9 39.2 41.1 38.6 34.6 ...
#>  $ body_mass       : int  3750 3800 3250 3450 3650 3625 4675 3200 3800 4400 ...
#>  $ flipper_length  : int  181 186 195 193 190 181 195 182 191 198 ...
#>  $ year            : int  2007 2007 2007 2007 2007 2007 2007 2007 2007 2007 ...
#>  $ island.Biscoe   : num  0 0 0 0 0 0 0 0 0 0 ...
#>  $ island.Dream    : num  0 0 0 0 0 0 0 0 0 0 ...
#>  $ island.Torgersen: num  1 1 1 1 1 1 1 1 1 1 ...
#>  $ sex.female      : num  0 1 1 1 0 1 0 1 0 0 ...
#>  $ sex.male        : num  1 0 0 0 1 0 1 0 1 1 ...
```
