# Function to evaluate the carbon saturation via RothC simulation on multiple fields using multicore processing

Function to evaluate the carbon saturation via RothC simulation on
multiple fields using multicore processing

## Usage

``` r
bln_rothc_multicore(
  ID,
  B_LU_BRP,
  B_GWL_GLG,
  A_SOM_LOI,
  A_CLAY_MI,
  scen,
  simyears = 50,
  quiet = TRUE
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) value of the BRP crop code

- B_GWL_GLG:

  (numeric) The lowest groundwater level averaged over the most dry
  periods in 8 years in cm below ground level

- A_SOM_LOI:

  (numeric) value for the soil organic matter content of the soil

- A_CLAY_MI:

  (numeric) value for the clay content of the soil

- scen:

  (character) scenarios to be simulated. Options include BAU,
  BAUIMPR,CLT and ALL.

- simyears:

  (integer) value for the amount of years to simulate, default is 50
  years

- quiet:

  (boolean) showing progress bar for calculation RothC C-saturation for
  each field
