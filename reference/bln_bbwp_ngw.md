# Function to calculate and evaluate the N buffering capacity of soils in view of water purification for groundwater quality

This function gives the NGW score of the BBWP framework

## Usage

``` r
bln_bbwp_ngw(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  B_SC_WENR,
  B_AER_CBS,
  B_GWP,
  B_GWL_CLASS,
  A_SOM_LOI,
  A_N_RT,
  B_N_RT = NA_real_,
  B_N_RT_SD = NA_real_,
  penalty = TRUE
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- B_SC_WENR:

  (integer) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006). Options include:
  1,2,3,4,5,10,11,401,901 and 902.

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_GWP:

  (boolean) is the field located in a groundwater protected area
  (options: TRUE or FALSE)

- B_GWL_CLASS:

  (character) The groundwater table class

- A_SOM_LOI:

  DEPRECATED

- A_N_RT:

  (numeric) The organic nitrogen content of the soil in mg N / kg

- B_N_RT:

  (numeric) The mean organic nitrogen content of the soil in the LSW
  region (mg N / kg). Optional.

- B_N_RT_SD:

  (numeric) The variance in organic nitrogen content of the soil in the
  LSW region (standard deviation) (mg N / kg). Optional.

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators. Default is TRUE.

## Examples

``` r
bln_bbwp_ngw(
ID = 15,
B_LU_BRP = 3732,
B_SOILTYPE_AGR = 'dekzand',
B_SC_WENR = 902,
B_AER_CBS = 'LG14',
B_GWP = FALSE,
B_GWL_CLASS = 'VI',
A_SOM_LOI = 7.92,
A_N_RT = 2300,
B_N_RT = NA_real_,
B_N_RT_SD = NA_real_,
penalty = TRUE
)
#> [1] 0.46

```
