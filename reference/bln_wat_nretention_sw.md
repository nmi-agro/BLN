# Function to calculate and evaluate the N retention in soils in view of water purification for surface quality

This function equals the N retention function of the OSI

## Usage

``` r
bln_wat_nretention_sw(
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
