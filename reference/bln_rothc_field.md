# Function for simple RothC simulation for grassland and cropland field

This function calculates the optimal sequestration scenario for cropland
and grassland with the RothC model over the course of 50 years For
cropland this function converts the crop to winter wheat where crop
residue is left behind, grassland field are converted to permanent
grassland The function assumes that the P-status of the soil is neutral
according to the Dutch fertilization regulation and applies the maximal
permitted P-dose in the form of cattle slurry

## Usage

``` r
bln_rothc_field(
  B_LU_BRP,
  A_SOM_LOI,
  A_CLAY_MI,
  simyears = 50,
  init = FALSE,
  scen = c("BAU", "ALL"),
  spinup = 10
)
```

## Arguments

- B_LU_BRP:

  (numeric) value of the BRP crop code

- A_SOM_LOI:

  (numeric) value for the soil organic matter content of the soil

- A_CLAY_MI:

  (numeric) value for the clay content of the soil

- simyears:

  (integer) value for the amount of years to simulate, default is 50
  years

- init:

  (boolean) use internal analytical solution for initialisation RothC

- scen:

  (character) scenarios to be simulated. Options include BAU,
  BAUIMPR,CLT and ALL.

- spinup:

  (numeric) the spinup period that is used for initialisation model
