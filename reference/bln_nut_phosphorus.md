# Function to calculate and evaluate the phosphorus use efficiency in view of the soils' function to improve nutrient recycling

Function to calculate and evaluate the phosphorus use efficiency in view
of the soils' function to improve nutrient recycling

## Usage

``` r
bln_nut_phosphorus(
  B_LU_BRP,
  A_P_AL = NA_real_,
  A_P_CC = NA_real_,
  A_P_WA = NA_real_
)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code

- A_P_AL:

  (numeric) The P-content of the soil extracted with ammonium lactate

- A_P_CC:

  (numeric) The P-content of the soil extracted with CaCl2

- A_P_WA:

  (numeric) The P-content of the soil extracted with water

## Examples

``` r
bln_nut_phosphorus(B_LU_BRP = 265, A_P_AL = 45, A_P_CC = 2.5)
#> [1] 0.9069136
bln_nut_phosphorus(B_LU_BRP = c(265,1019),A_P_AL = c(35,54),A_P_CC = c(2.5,4.5), A_P_WA = c(35,65))
#> [1] 0.9180670 0.9966953
```
