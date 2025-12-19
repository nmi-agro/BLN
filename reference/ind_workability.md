# Calculate indicator for workability

This function calculates the indicator for the workability of the soil
expressed as the period in which the soil can be worked without
inflicting structural damage that cannot be restored by the regular
management on the farm.

## Usage

``` r
ind_workability(D_WO, B_LU_BRP)
```

## Arguments

- D_WO:

  (numeric) The value of the relative (workable) season length
  calculated by
  [`calc_workability`](https://rdrr.io/pkg/OBIC/man/calc_workability.html)

- B_LU_BRP:

  (numeric) The crop code from the BRP

## Value

The evaluated score for the soil function to allow the soil to be
managed by agricultural activities. A numeric value between 0 and 1.

## Examples

``` r
ind_workability(D_WO = 0.85,B_LU_BRP = 256)
#> [1] 0.8175745
ind_workability(D_WO = c(0.15,0.6,0.9),B_LU_BRP = c(256,1019,1019))
#> [1] 0.0001233946 0.0953494649 0.9046505351
```
