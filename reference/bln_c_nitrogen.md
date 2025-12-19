# Calculate the soil nitrogen supplying capacity in the Netherlands

This function calculates the NLV (nitrogen producing capacity) for the
soil

## Usage

``` r
bln_c_nitrogen(B_LU_BRP, B_SOILTYPE_AGR, A_SOM_LOI, A_N_RT, A_CN_FR = NA_real_)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code from the BRP

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_SOM_LOI:

  (numeric) The percentage organic matter in the soil

- A_N_RT:

  (numeric) The organic nitrogen content of the soil in mg N / kg

- A_CN_FR:

  (numeric) The carbon to nitrogen ratio (-)

## Value

The capacity of the soil to supply nitrogen (kg N / ha / yr). A numeric
value, converted to a OSI score.

## Examples

``` r
bln_c_nitrogen(B_LU_BRP = 256, B_SOILTYPE_AGR = 'dekzand',A_SOM_LOI = 4.5,A_N_RT = 2500)
#> [1] 1
bln_c_nitrogen(1019,'dekzand',5.5,2315)
#> [1] 1
```
