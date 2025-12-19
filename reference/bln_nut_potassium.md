# Function to calculate and evaluate the potassium use efficiency in view of the soils' function to improve nutrient recycling

Function to calculate and evaluate the potassium use efficiency in view
of the soils' function to improve nutrient recycling

## Usage

``` r
bln_nut_potassium(
  B_LU_BRP,
  B_SOILTYPE_AGR,
  A_SOM_LOI,
  A_CLAY_MI,
  A_PH_CC,
  A_CEC_CO,
  A_K_CO_PO,
  A_K_CC
)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_PH_CC:

  (numeric) The acidity of the soil, measured in 0.01M CaCl2 (-)

- A_CEC_CO:

  (numeric) The cation exchange capacity of the soil (mmol+ / kg),
  analyzed via Cobalt-hexamine extraction

- A_K_CO_PO:

  (numeric) The occupation of the CEC with potassium (%)

- A_K_CC:

  (numeric) The plant available potassium, extracted with 0.01M CaCl2
  (mg / kg),
