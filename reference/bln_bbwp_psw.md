# Function to calculate and evaluate the P buffering capacity of soils in view of water purification for surface quality

This function gives the PSW score of the BBWP framework

## Usage

``` r
bln_bbwp_psw(
  ID,
  B_LU_BRP,
  B_SC_WENR,
  B_AER_CBS,
  B_GWL_CLASS,
  B_SLOPE_DEGREE,
  A_P_CC,
  A_P_SG,
  A_AL_OX,
  A_FE_OX,
  D_RO_R,
  D_SA_W,
  B_RO_R = NA_real_,
  B_RO_R_SD = NA_real_,
  B_P_CC = NA_real_,
  B_P_CC_SD = NA_real_,
  B_P_SG = NA_real_,
  B_P_SG_SD = NA_real_,
  B_AL_OX = NA_real_,
  B_AL_OX_SD = NA_real_,
  B_FE_OX = NA_real_,
  B_FE_OX_SD = NA_real_,
  B_CT_PSW,
  B_CT_PSW_MAX = 0.5,
  penalty = TRUE
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code

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

- A_P_CC:

  (numeric) The plant available P content, measured via 0.01M CaCl2
  extraction (mg / kg)

- A_P_SG:

  (numeric) The P-saturation index (%)

- A_AL_OX:

  (numeric) The iron content of soil (mmol / kg)

- A_FE_OX:

  (numeric) The aluminium content of soil (mmol / kg)

- D_RO_R:

  (numeric) The risk that surface water runs off the parcel

- D_SA_W:

  (numeric) The wet perimeter index of the field, fraction that field is
  surrounded by water

- B_RO_R:

  (numeric) The mean D_RO_R of the soil in the LSW region. Optional.

- B_RO_R_SD:

  (numeric) The variance in D_RO_R in the LSW region (standard
  deviation). Optional.

- B_P_CC:

  (numeric) The mean P-CaCl2 content of the soil in the LSW region (mg P
  / kg). Optional.

- B_P_CC_SD:

  (numeric) The variance in P-CaCl2 content of the soil in the LSW
  region (standard deviation) (mg P / kg). Optional.

- B_P_SG:

  (numeric) The mean P saturation degree of the soil in the LSW region
  (mg N / kg). Optional.

- B_P_SG_SD:

  (numeric) The variance in P saturation degree of the soil in the LSW
  region (standard deviation) (%). Optional.

- B_AL_OX:

  (numeric) The mean Al-oxide content of the soil in the LSW region (%).
  Optional.

- B_AL_OX_SD:

  (numeric) The variance in Al-oxide content of the soil in the LSW
  region (standard deviation) (mmol+ / kg). Optional.

- B_FE_OX:

  (numeric) The mean Fe-oxide content of the soil in the LSW region
  (mmol+ / kg). Optional.

- B_FE_OX_SD:

  (numeric) The variance in Fe-oxide content of the soil in the LSW
  region (standard deviation) (mmol+ / kg). Optional.

- B_CT_PSW:

  (numeric) the critical target for required reduction in P loss from
  agriculture (kg P / ha) to reach targets of KRW

- B_CT_PSW_MAX:

  (numeric) the max critical target for P reduction loss (kg P / ha)

- penalty:

  (boolean) the option to apply a penalty for high risk BBWP field
  indicators. Default is TRUE.
