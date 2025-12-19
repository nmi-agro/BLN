# Function to evaluate the carbon saturation via SOMERS simulation on peat soils

Function to evaluate the carbon saturation via SOMERS simulation on peat
soils

## Usage

``` r
bln_clim_somers(
  ID,
  B_SOILTYPE_AGR,
  A_SOM_LOI,
  B_SOMERS_BC,
  B_DRAIN_SP,
  B_DRAIN_WP,
  B_DRAIN_SP_CHANGE = 0.2
)
```

## Arguments

- ID:

  (character) A field id

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_SOM_LOI:

  (numeric) value for the soil organic matter content of the soil

- B_SOMERS_BC:

  (integer) The base combination of SOMERS peat soil classification
  (varies between 1 and 290)

- B_DRAIN_SP:

  (numeric) the drooglegging of a field in summer (difference field
  height and ditch level, in meters)

- B_DRAIN_WP:

  (numeric) the drooglegging of a field in winter (difference field
  height and ditch level, in meters)

- B_DRAIN_SP_CHANGE:

  (numeric) the decrease in drooglegging of a field in summer (in
  meters). Allowed decrease varies from 0 to 0.5m.
