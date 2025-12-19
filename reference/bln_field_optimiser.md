# Optimize the crop rotation plan for soil quality improvement

This function estimates what crop rotation plan is mosts suited for the
current soil quality and the associated contribution to ecysystem
services

## Usage

``` r
bln_field_optimiser(
  ID,
  B_LU_BRP,
  B_SC_WENR,
  B_GWL_CLASS,
  B_SOILTYPE_AGR,
  B_HELP_WENR,
  B_AER_CBS,
  B_GWL_GLG,
  B_GWL_GHG,
  B_GWL_ZCRIT,
  B_DRAIN,
  B_FERT_NORM_FR,
  B_SLOPE_DEGREE,
  B_GWP,
  B_AREA_DROUGHT,
  B_CT_PSW,
  B_CT_NSW,
  B_SOMERS_BC,
  B_DRAIN_SP,
  B_DRAIN_WP,
  A_SOM_LOI,
  A_CLAY_MI,
  A_SAND_MI,
  A_SILT_MI,
  A_FE_OX,
  A_AL_OX,
  A_PH_CC,
  A_N_RT,
  A_CN_FR,
  A_S_RT,
  A_N_PMN,
  A_P_AL,
  A_P_CC,
  A_P_WA,
  A_P_SG,
  A_CEC_CO,
  A_CA_CO_PO,
  A_MG_CO_PO,
  A_K_CO_PO,
  A_K_CC,
  A_MG_CC,
  A_MN_CC,
  A_ZN_CC,
  A_CU_CC,
  D_SA_W,
  D_RO_R,
  M_COMPOST,
  M_GREEN,
  A_DENSITY_SA = NA_real_,
  B_LSW_ID = NA_character_,
  LSW = NULL,
  i_clim_rothc = NA_real_,
  A_SOM_LOI_MLMAX = NA_real_,
  foptim = list(scenarios = NULL, b_lu_brp = NULL, outputtype = "rotation", mc = TRUE,
    runrothc = TRUE)
)
```

## Arguments

- ID:

  (character) A fieldid

- B_LU_BRP:

  (numeric) a series with crop codes given the crop rotation plan
  (source: the BRP)

- B_SC_WENR:

  (character) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006).

- B_GWL_CLASS:

  (character) The groundwater table class

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- B_HELP_WENR:

  (character) The soil type abbreviation, derived from 1:50.000 soil map

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- B_GWL_GLG:

  (numeric) The lowest groundwater level averaged over the most dry
  periods in 8 years in cm below ground level

- B_GWL_GHG:

  (numeric) The highest groundwater level averaged over the most wet
  periods in 8 years in cm below ground level

- B_GWL_ZCRIT:

  (numeric) The distance between ground level and groundwater level at
  which the groundwater can supply the soil surface with 2mm water per
  day (in cm)

- B_DRAIN:

  (boolean) Are drains installed to drain the field (options: yes or no)

- B_FERT_NORM_FR:

  (numeric) The fraction of the application norm utilized

- B_SLOPE_DEGREE:

  (numeric) The slope of the field (degrees)

- B_GWP:

  (boolean) is the field located in a groundwater protected area
  (options: TRUE or FALSE)

- B_AREA_DROUGHT:

  (boolean) is the field located in an area with high risks for water
  deficiencies (options: TRUE or FALSE)

- B_CT_PSW:

  (numeric) the critical target for required reduction in P loss from
  agriculture (kg P / ha) to reach targets of KRW

- B_CT_NSW:

  (numeric) the critical target for required reduction in N loss from
  agriculture (kg N / ha) to reach targets of KRW

- B_SOMERS_BC:

  (integer) The base combination of SOMERS peat soil classification
  (varies between 1 and 290)

- B_DRAIN_SP:

  (numeric) the drooglegging of a field in summer (difference field
  height and ditch level, in meters)

- B_DRAIN_WP:

  (numeric) the drooglegging of a field in winter (difference field
  height and ditch level, in meters)

- A_SOM_LOI:

  (numeric) The percentage organic matter in the soil (%)

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- A_SAND_MI:

  (numeric) The sand content of the soil (%)

- A_SILT_MI:

  (numeric) The silt content of the soil (%)

- A_FE_OX:

  (numeric) The aluminium content of soil (mmol / kg)

- A_AL_OX:

  (numeric) The iron content of soil (mmol / kg)

- A_PH_CC:

  (numeric) The acidity of the soil, measured in 0.01M CaCl2 (-)

- A_N_RT:

  (numeric) The organic nitrogen content of the soil in mg N / kg

- A_CN_FR:

  (numeric) The carbon to nitrogen ratio (-)

- A_S_RT:

  (numeric) The total Sulfur content of the soil (in mg S per kg)

- A_N_PMN:

  (numeric) The potentially mineralizable N pool (mg N / kg soil)

- A_P_AL:

  (numeric) The P-AL content of the soil

- A_P_CC:

  (numeric) The plant available P content, extracted with 0.01M CaCl2
  (mg / kg)

- A_P_WA:

  (numeric) The P-content of the soil extracted with water (mg P2O5 /
  100 ml soil)

- A_P_SG:

  (numeric) The P-saturation index (%)

- A_CEC_CO:

  (numeric) The cation exchange capacity of the soil (mmol+ / kg),
  analyzed via Cobalt-hexamine extraction

- A_CA_CO_PO:

  (numeric) The The occupation of the CEC with Ca (%)

- A_MG_CO_PO:

  (numeric) The The occupation of the CEC with Mg (%)

- A_K_CO_PO:

  (numeric) The occupation of the CEC with K (%)

- A_K_CC:

  (numeric) The plant available K content, extracted with 0.01M CaCl2
  (mg / kg)

- A_MG_CC:

  (numeric) The plant available Mg content, extracted with 0.01M CaCl2
  (ug / kg)

- A_MN_CC:

  (numeric) The plant available Mn content, extracted with 0.01M CaCl2
  (ug / kg)

- A_ZN_CC:

  (numeric) The plant available Zn content, extracted with 0.01M CaCl2
  (ug / kg)

- A_CU_CC:

  (numeric) The plant available Cu content, extracted with 0.01M CaCl2
  (ug / kg)

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- D_RO_R:

  (numeric) The risk that surface water runs off the parcel

- M_COMPOST:

  (numeric) The frequency that compost is applied (optional, every x
  years)

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, option: yes or no)

- A_DENSITY_SA:

  (numeric) The bulk density of the soil (kg/m3)

- B_LSW_ID:

  (character) An unique identifier for each Local Surface Water per
  field

- LSW:

  (data.table) The averaged soil properties (mean and sd) per Local
  Surface Water. Can be derived from bbwp_lsw_properties.

- i_clim_rothc:

  (numeric) the soil indicator for carbon saturation derived via rothc.

- A_SOM_LOI_MLMAX:

  (numeric) The max. percentage organc matter estimated via machine
  learning model (%)

- foptim:

  (list) a list with options to guide the identification of suitable
  crop rotation schemes

## Details

the foptim is a list with parameters affecting the selection of best
crop rotation plans. the parameter outputtype gives the user the
possibility to select specific outcomes: scores (gives all scores per
rotation) indicators (gives the indicator values per rotation)
bottlenecks (gives the number of bottlenecks per rotation) rotation
(gives the best rotation for BLN total, per ESD and OBI) all (all output
options) The parameter b_lu_brp allows the user to send an user defined
crop rotation using BRP codes. This will replace the default scenarios
as long as the parameter scenarios is NULL. The parameter scenarios
allows the user to select only specific crop rotation scenarios from the
package table \`bln_scen_croprotation\`
