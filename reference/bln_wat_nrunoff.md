# Function to calculate and evaluate the N leaching risk in soils in view of water purification for surface water quality

Function to calculate and evaluate the N leaching risk in soils in view
of water purification for surface water quality

## Usage

``` r
bln_wat_nrunoff(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  B_SC_WENR,
  B_GWL_CLASS,
  B_AER_CBS,
  B_FERT_NORM_FR = 1,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_SOM_LOI,
  A_P_AL,
  A_P_WA,
  A_P_CC,
  A_PH_CC,
  A_CEC_CO,
  A_K_CO_PO,
  A_K_CC,
  M_GREEN
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

  (character) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006).

- B_GWL_CLASS:

  (character) The groundwater table class

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_FERT_NORM_FR:

  (numeric) The fraction of the application norm utilized

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SAND_MI:

  (numeric) The sand content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

- A_SOM_LOI:

  (numeric) The organic matter content of the soil (%)

- A_P_AL:

  (numeric) The P-AL content of the soil

- A_P_WA:

  (numeric) The P-content of the soil extracted with water (mg P2O5 /
  100 ml soil)

- A_P_CC:

  (numeric) The plant available P content, extracted with 0.01M CaCl2
  (mg / kg)

- A_PH_CC:

  (numeric) The acidity of the soil, measured in 0.01M CaCl2 (-)

- A_CEC_CO:

  (numeric) The cation exchange capacity of the soil (mmol+ / kg),
  analyzed via Cobalt-hexamine extraction

- A_K_CO_PO:

  (numeric) The occupation of the CEC with K (%)

- A_K_CC:

  (numeric) The plant available K content, extracted with 0.01M CaCl2
  (mg / kg)

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, option: yes or no)
