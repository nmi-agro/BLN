# Function to calculate and evaluate the nitrogen use efficiency in view of the soils' function to improve nutrient recycling

Function to calculate and evaluate the nitrogen use efficiency in view
of the soils' function to improve nutrient recycling

## Usage

``` r
bln_nut_nitrogen(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
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

  (character) The type of soil

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_N_RT:

  (numeric) The organic nitrogen content of the soil (mg N / kg)

- A_CN_FR:

  (numeric) The carbon to nitrogen ratio (-)
