# Calculate the distance for target for soil pH in view of the BLN production function

This functions evaluates the difference between the measured pH and the
optimal pH according to the Bemestingsadvies

## Usage

``` r
bln_c_ph(ID, B_LU_BRP, B_SOILTYPE_AGR, A_SOM_LOI, A_CLAY_MI, A_PH_CC)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code from the BRP

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- A_SOM_LOI:

  (numeric) The organic matter content of soil in percentage

- A_CLAY_MI:

  (numeric) The percentage A_CLAY_MI present in the soil

- A_PH_CC:

  (numeric) The pH-CaCl2 of the soil

## Value

The bln indicator for the soil pH

## References

Handboek Bodem en Bemesting tabel 5.1, 5.2 en 5.3
