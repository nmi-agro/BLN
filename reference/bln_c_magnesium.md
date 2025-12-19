# Calculate the capacity of soils to supply Magnesium for the BLN production function

This function calculates an index for the availability of Magnesium in
soil

## Usage

``` r
bln_c_magnesium(
  B_LU_BRP,
  B_SOILTYPE_AGR,
  A_SOM_LOI,
  A_CLAY_MI,
  A_PH_CC,
  A_CEC_CO,
  A_K_CO_PO,
  A_MG_CC,
  A_K_CC
)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code from the BRP

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_SOM_LOI:

  (numeric) The percentage organic matter in the soil (%)

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_PH_CC:

  (numeric) The acidity of the soil, measured in 0.01M CaCl2 (-)

- A_CEC_CO:

  (numeric) The cation exchange capacity of the soil (mmol+ per kg),
  analyzed via Cobalt-hexamine extraction

- A_K_CO_PO:

  (numeric) The occupation of the CEC with potassium (%)

- A_MG_CC:

  (numeric) The plant available content of Mg in the soil (mg Mg per kg)
  extracted by 0.01M CaCl2

- A_K_CC:

  (numeric) The plant available potassium, extracted with 0.01M CaCl2
  (mg per kg),

## Value

An index representing the availability of Magnesium in a soil. A numeric
value.
