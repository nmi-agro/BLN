# Calculate and evaluate the indicator for wind erodibility in view of food production

This function calculates and evaluates the risk for wind erodibility of
soils, derived from Van Kerckhoven et al. (2009) and Ros & Bussink
(2013)

## Usage

``` r
bln_p_windererosion(B_LU_BRP, A_CLAY_MI, A_SILT_MI)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

## Value

The vulnerability of the soil for wind erosion. A numeric value.
