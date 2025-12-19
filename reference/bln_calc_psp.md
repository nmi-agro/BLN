# Calculate the precipitation surplus

This function calculates the precipitation surplus (in mm / ha) given
the crop rotation plan. Is identical to OBIC function calc_psp but much
faster to facilitate national and regional calculations

## Usage

``` r
bln_calc_psp(ID, B_LU_BRP, M_GREEN)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code from the BRP

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, options: TRUE, FALSE)

## Value

The estimated precipitation surplus (in mm / ha) depending on averaged
precipitation and evaporation. A numeric value.

## Examples

``` r
bln_calc_psp(ID = 1,B_LU_BRP = 265, M_GREEN = TRUE)
#> [1] 228.18
bln_calc_psp(ID = c(1,2,1,2),B_LU_BRP = c(265,1019,265,1019), M_GREEN = rep(TRUE,4))
#> [1] 239.698 311.568 239.698 299.910
```
