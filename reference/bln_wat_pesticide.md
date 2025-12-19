# Function to calculate and evaluate the pesticide retention in soils in view of water purification for groundwater water quality

Function to calculate and evaluate the pesticide retention in soils in
view of water purification for groundwater water quality

## Usage

``` r
bln_wat_pesticide(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_SOM_LOI,
  M_GREEN,
  M_MECHWEEDS,
  M_PESTICIDES_DST
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SAND_MI:

  (numeric) The sand content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, option: yes or no)

- M_MECHWEEDS:

  (boolean) measure. Use of mechanical weed protection (option: yes or
  no)

- M_PESTICIDES_DST:

  (boolean) measure. Use of DST for pesticides (option: yes or no)
