# Calculate the capacity of soils to supply sulfur for the BLN production function

This function calculates a S-balance given the SLV (sulfur supplying
capacity) of a soil

## Usage

``` r
bln_c_sulfur(B_LU_BRP, B_SOILTYPE_AGR, B_AER_CBS, A_SOM_LOI, A_S_RT)
```

## Arguments

- B_LU_BRP:

  (numeric) The crop code from the BRP

- B_SOILTYPE_AGR:

  (character) The type of soil

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (in percent)

- A_S_RT:

  (numeric) The total Sulpher content of the soil (in mg S per kg)

## Value

The capacity of the soil to supply Sulfur (kg S / ha / yr). A numeric
value.
