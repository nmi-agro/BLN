# Function to calculate and evaluate the water buffering capacity of soils in view of water retention in soil

This function gives the WB score of the BBWP framework

## Usage

``` r
bln_bbwp_bw(
  ID,
  B_LU_BRP,
  B_HELP_WENR,
  B_GWL_CLASS,
  B_AREA_DROUGHT,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_SOM_LOI,
  penalty = TRUE
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

- B_HELP_WENR:

  (character) The soil type abbreviation, derived from 1:50.000 soil map

- B_GWL_CLASS:

  (character) The groundwater table class

- B_AREA_DROUGHT:

  (boolean) is the field located in an area with high risks for water
  deficiencies (options: TRUE or FALSE)

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SAND_MI:

  (numeric) The sand content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators. Default is TRUE.

## Examples

``` r
bln_bbwp_bw(
ID = 15,
B_LU_BRP = c(233,259,2014,308),
B_HELP_WENR = c('gMn53C', 'Mn25C','U0102nr108','nSn13A'),
B_GWL_CLASS = rep('VI',4),
B_AREA_DROUGHT = rep(TRUE,4),
A_CLAY_MI = rep(20,4),
A_SAND_MI = rep(15,4),
A_SILT_MI = rep(10,4),
A_SOM_LOI = c(2,3,5,8),
penalty = TRUE
)
#> [1] 0.9174650 0.9382131 0.9216214 0.9582200
```
