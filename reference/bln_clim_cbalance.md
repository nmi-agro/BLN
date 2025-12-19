# Function to calculate and evaluate a default SOM balance

Function to calculate and evaluate a default SOM balance

## Usage

``` r
bln_clim_cbalance(
  ID,
  B_LU_BRP,
  A_SOM_LOI,
  A_P_AL,
  A_P_WA,
  M_COMPOST = 0,
  M_GREEN = FALSE
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) value of the BRP crop code

- A_SOM_LOI:

  (numeric) value for the soil organic matter content of the soil

- A_P_AL:

  (numeric) The P-AL content of the soil

- A_P_WA:

  (numeric) The P-content of the soil extracted with water (mg P2O5 /
  100 ml soil)

- M_COMPOST:

  (numeric) The frequency that compost is applied (optional, every x
  years)

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional)
