# Function to evaluate the carbon saturation via RothC simulation

Function to evaluate the carbon saturation via RothC simulation

## Usage

``` r
bln_clim_rothc(
  ID,
  B_LU_BRP,
  B_GWL_GLG,
  A_SOM_LOI,
  A_CLAY_MI,
  quiet = FALSE,
  mc = TRUE
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

- quiet:

  (boolean) showing progress bar for calculation RothC C-saturation for
  each field

- mc:

  (boolean) option to run rothc in parallel on multicores
