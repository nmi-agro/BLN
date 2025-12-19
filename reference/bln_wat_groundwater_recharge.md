# Function to calculate and evaluate the groundwater recharge in view of the soils' function to retain water

Function to calculate and evaluate the groundwater recharge in view of
the soils' function to retain water

## Usage

``` r
bln_wat_groundwater_recharge(
  ID,
  B_LU_BRP,
  B_SC_WENR,
  B_GWL_CLASS,
  B_DRAIN,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_SOM_LOI,
  M_GREEN
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

- B_SC_WENR:

  (character) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006).

- B_GWL_CLASS:

  (character) The groundwater table class

- B_DRAIN:

  (boolean) Are drains installed to drain the field (options: yes or no)

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

## Examples

``` r
bln_wat_groundwater_recharge(
ID = 15,
B_LU_BRP = c(233,259,2014,308),
B_SC_WENR = rep(11,4),
B_GWL_CLASS = rep('VI',4),
B_DRAIN = rep(TRUE,4),
A_CLAY_MI = rep(20,4),
A_SAND_MI = rep(15,4),
A_SILT_MI = rep(10,4),
A_SOM_LOI = c(2,3,5,8),
M_GREEN = rep(FALSE,4)
)
#> [1] 0.6776481 0.7111643 0.7762592 0.7852844
```
