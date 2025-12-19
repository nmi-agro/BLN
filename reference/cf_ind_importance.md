# Helper function to weight and correct the risk and scores

Helper function to weight and correct the risk and scores

## Usage

``` r
cf_ind_importance(x)
```

## Arguments

- x:

  The risk or score value to be weighted

## Value

A transformed variable after applying a inverse weighing function so
that lower values will gain more impact when applied in a weighed.mean
function. A numeric value.

## Examples

``` r
cf_ind_importance(x = 0.5)
#> [1] 1.428571
cf_ind_importance(x = c(0.1,0.5,1.5))
#> [1] 3.3333333 1.4285714 0.5882353
```
