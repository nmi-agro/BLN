# Calculate the K availability index for the Netherlands

This function calculates the K availability of a soil, using the
agronomic index used in the Netherlands.

## Usage

``` r
bln_c_potassium(
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

## Value

The capacity of the soil to supply and buffer potassium, evaluated given
an optimum threshold for yield. A numeric value.

## Examples

``` r
bln_c_potassium(B_LU_BRP = 265, B_SOILTYPE_AGR = 'dekzand',
A_SOM_LOI = 4, A_CLAY_MI = 11,A_PH_CC = 5.4, A_CEC_CO = 125,
A_K_CO_PO = 8.5, A_K_CC = 145)
#> [1] 0.999997
bln_c_potassium(265, 'dekzand',4, 11,5.4,  125,8.5, 145)
#> [1] 0.999997
bln_c_potassium(c(265,1019), rep('dekzand',2),c(4,6), c(11,14),
c(5.4,5.6),  c(125,145),c(8.5,3.5), c(145,180))
#> [1] 0.9999970 0.9954403
```
