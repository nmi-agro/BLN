# Function to calculate and evaluate the N buffering capacity of soils in view of water purification for surface quality

This function gives the NSW score of the BBWP framework

## Usage

``` r
bln_bbwp_nsw(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  B_SC_WENR,
  B_AER_CBS,
  B_GWL_CLASS,
  B_SLOPE_DEGREE,
  A_SOM_LOI,
  A_N_RT,
  D_RO_R,
  D_SA_W,
  B_N_RT = NA_real_,
  B_RO_R = NA_real_,
  B_RO_R_SD = NA_real_,
  B_N_RT_SD = NA_real_,
  B_CT_NSW,
  B_CT_NSW_MAX = 5,
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

- B_GWL_CLASS:

  (character) The groundwater table class

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_N_RT:

  (numeric) The organic nitrogen content of the soil in mg N / kg

- D_RO_R:

  (numeric) The risk that surface water runs off the parcel

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- B_N_RT:

  (numeric) The mean organic nitrogen content of the soil in the LSW
  region (mg N / kg). Optional.

- B_RO_R:

  (numeric) The mean D_RO_R of the soil in the LSW region. Optional.

- B_RO_R_SD:

  (numeric) The variance in D_RO_R in the LSW region (standard
  deviation). Optional.

- B_N_RT_SD:

  (numeric) The variance in organic nitrogen content of the soil in the
  LSW region (standard deviation) (mg N / kg). Optional.

- B_CT_NSW:

  (numeric) the critical target for required reduction in N loss from
  agriculture (kg N / ha) to reach targets of KRW

- B_CT_NSW_MAX:

  (numeric) the max critical target for N reduction loss (kg N / ha)

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators. Default is TRUE.
