# Function to calculate and evaluate the N retention in soils in view of water purification for groundwater quality

This function equals the N retention function of the OSI

## Usage

``` r
bln_wat_nretention_gw(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  B_AER_CBS,
  B_GWL_CLASS,
  A_SOM_LOI,
  A_N_RT,
  A_CN_FR = NA_real_
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_GWL_CLASS:

  (character) The groundwater table class

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_N_RT:

  (numeric) The organic nitrogen content of the soil in mg N / kg

- A_CN_FR:

  (numeric) The carbon to nitrogen ratio (-)

## Examples

``` r
bln_wat_nretention_gw(
ID = 15,
B_LU_BRP = c(233,259,2014,308),
B_SOILTYPE_AGR = rep('rivierklei',4),
B_GWL_CLASS = rep('III',4),
B_AER_CBS = rep('LG06',4),
A_SOM_LOI = rep(3,4),
A_N_RT = c(1000,2500,3500,9800),
A_CN_FR = c(25,15,10,5.5)
)
#> [1] 0.9888663 0.9878114 0.9871454 0.8109978

```
