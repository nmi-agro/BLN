# Description of the input and output for BLN

## BLN input variables

The main function of the package
[`bln_field()`](https://nmi-agro.github.io/BLN/reference/bln_field.md)
requires as input a series of soil properties required to assess the
soil quality. The required input columns are specified in
[`BLN::bln_input_description`](https://nmi-agro.github.io/BLN/reference/bln_input_description.md)
and can also be seen in the table below.

Note that not all parameters are required. Optional parameters incude:

- measurements retrieved from the Soil Condition Score, a manual soil
  profile assessment. These include all input variables ending with
  `_BCS`.
- variables related to soil management measures. These include all input
  variables starting with `M_`
- variables related to the targets for N and P being defined per Local
  Surface Water (LSW). These include the variables B_LSW_ID (set at NA),
  B_CT_PSW_MAX (set at 0.5), B_CT_NSW_MAX (set at 5.0) and the
  data.table with mean properties per LSW (object LSW, set at NULL).

Note also that by default the function is not (re)calculating the C
saturation via machine learning (ML) models or the RothC model due to
time restrictions. This implies the following:

- by default the C-saturation via ML model is approximated via a simple
  linear regression model. This is done when `A_SOM_LOI_MLMAX` is set to
  NA. If the user has acces to a ML model, then this argument can be
  overwritten by the user.
- by default the C-saturation for mineral soils, being estimated via
  RothC simulation modelling is set to NA. This is done when argument
  `i_clim_rothc` is set to NA and the variable runrothc = FALSE.
- to rerun RothC one should set runrothc to TRUE. When mc is set to TRUE
  then it is calculated using multi-core processing.

All input variables are described below:

| code | parameter | data_type | value_min | value_max |
|:---|:---|:---|---:|---:|
| A_AL_OX | Aluminium extractable with oxalate | num | 0.1 | 1000 |
| A_CA_CO_PO | Calcium occupation | num | 1.0 | 100 |
| A_CC_BCS | Crop cover on the surface | int | 0.0 | 2 |
| A_CEC_CO | Cation Exchange Capacity | num | 1.0 | 1000 |
| A_CLAY_MI | Clay content | num | 0.1 | 75 |
| A_CN_FR | Carbon / Nitrogen ratio | num | 5.0 | 40 |
| A_CU_CC | Copper plant available | num | 0.1 | 1000 |
| A_C_BCS | Presence of visible cracks in the top layer | int | 0.0 | 2 |
| A_DENSITY_SA | Dry bulk density | num | 0.5 | 3 |
| A_EW_BCS | Presence of earth worms | int | 0.0 | 2 |
| A_FE_OX | Iron extractable with oxalate | num | 0.1 | 1000 |
| A_GS_BCS | Presence of watterlogged conditions and gley spots | int | 0.0 | 2 |
| A_K_CC | Potassium plant available | num | 1.0 | 600 |
| A_K_CO_PO | Potassium occupation | num | 0.1 | 50 |
| A_MG_CC | Magnesium plant available | num | 1.0 | 1100 |
| A_MG_CO_PO | Magnesium occupation | num | 0.1 | 50 |
| A_MN_CC | Manganese plant available | num | 0.1 | 60000 |
| A_N_PMN | Microbial Activity | num | 1.0 | 500 |
| A_N_RT | Total nitrogen content | num | 1.0 | 30000 |
| A_PH_CC | Acidity in CaCl2 | num | 3.0 | 10 |
| A_P_AL | Total phosphate content | num | 1.0 | 250 |
| A_P_BCS | Presence of water puddles on the lande\|\| ponding | int | 0.0 | 2 |
| A_P_CC | Phosphor plant available | num | 0.1 | 100 |
| A_P_SG | Phosphor saturation grade | num | 0.1 | 100 |
| A_P_WA | Phosphate in water extraction | num | 1.0 | 250 |
| A_RD_BCS | Root depth | int | 0.0 | 2 |
| A_RT_BCS | Presence of visible tracks / rutting or trampling on the land | int | 0.0 | 2 |
| A_SAND_MI | Sand content | num | 0.1 | 100 |
| A_SC_BCS | Presence of subsoil compaction | int | 0.0 | 2 |
| A_SILT_MI | Silt content | num | 0.1 | 100 |
| A_SOM_LOI | Organic matter content | num | 0.5 | 75 |
| A_SS_BCS | Soil structure | int | 0.0 | 2 |
| A_S_RT | S-totaal bodemvoorraad | num | 1.0 | 10000 |
| A_ZN_CC | Zinc plant available | num | 5.0 | 50000 |
| B_AER_CBS | Agricultural economic region CBS2016 | char | NA | NA |
| B_AREA_DROUGHT | Is the field located in an area with high risks for water deficiencies | bool | NA | NA |
| B_CT_NSW | The critical target for required reduction in N loss from agriculture to reach targets of KRW (Kader Richtlijn Water = EU guidelines for quality of surface and groundwater) | num | 0.0 | 1000 |
| B_CT_NSW_MAX | The max critical target for N reduction loss | num | 0.0 | 1000 |
| B_CT_PSW | The critical target for required reduction in P loss from agriculture to reach targets of KRW (Kader Richtlijn Water = EU guidelines for quality of surface and groundwater) | num | 0.0 | 1000 |
| B_CT_PSW_MAX | The max critical target for P reduction loss | num | 0.0 | 1000 |
| B_FERT_NORM_FR | The fraction of the fertilizer norm applied on the field | num | 0.0 | 1 |
| B_GWL_CLASS | Groundwater class | char | NA | NA |
| B_GWL_GHG | Averaged Highest Groundwater Level | num | 0.0 | NA |
| B_GWL_GLG | Averaged Lowest Groundwater Level | num | 0.0 | NA |
| B_GWL_ZCRIT | Distance between groundwater table and root zone (30 cm -mv) for delivering 2 mm/day | num | NA | NA |
| B_GWP | Is the field located in a groundwater protected area | bool | NA | NA |
| B_HELP_WENR | HELP soiltype | char | NA | NA |
| B_LU_BRP | Cultivation code according to BRP | int | NA | NA |
| B_SC_WENR | Compaction risk | int | NA | NA |
| B_SLOPE_DEGREE | Slope of the field | num | 0.0 | 30 |
| B_SOILTYPE_AGR | Agricultural soiltype | char | NA | NA |
| D_RO_R | Surface runoff risk | num | 0.0 | 1 |
| D_SA_W | The wet perimeter index of the field, fraction that field is surrounded by water | num | 0.0 | 1 |
| M_COMPOST | Frequency of compost application (every x years) | int | 0.0 | 100 |
| M_DITCH | Ditch is cleaned and sludge is applied | bool | NA | NA |
| M_DRAIN | Drains available | bool | NA | NA |
| M_EARLYCROP | Use of early crops | bool | NA | NA |
| M_GREEN | Use of green manure | bool | NA | NA |
| M_LIME | Has field been limed in last three years | bool | NA | NA |
| M_MECHWEEDS | Use of mechanical weed protection | bool | NA | NA |
| M_NONBARE | Field 80% of the year green | bool | NA | NA |
| M_NONINVTILL | Non inversion tillage | bool | NA | NA |
| M_PESTICIDES_DST | Use of DST for pesticides | bool | NA | NA |
| M_SLEEPHOSE | Manure application using sleep hoses | bool | NA | NA |
| M_SOLIDMANURE | Use of solid manure | bool | NA | NA |
| M_SSPM | Soil Structure Protection Measures | bool | NA | NA |
| M_STRAWRESIDUE | Application of straw residues | bool | NA | NA |
| M_UNDERSEED | Underseed of grass at maize | bool | NA | NA |
| B_DRAIN | Are drains installed to drain the field | bool | NA | NA |
| B_SOMERS_BC | The base combination of SOMERS peat soil classification | int | 1.0 | 290 |
| B_DRAIN_SP | The drooglegging of a field in summer (difference field height and ditch level, in meters) | num | 0.0 | 3 |
| B_DRAIN_WP | The drooglegging of a field in winter (difference field height and ditch level, in meters) | num | 0.0 | 3 |
| A_SOM_LOI_MLMAX | The max. percentage organc matter estimated via machine learning model (/%) | num | 0.0 | 100 |
| ID | field id, unique identifier for a field | char | NA | NA |
| B_LSW_ID | the id for the local surface water geometry where the field is located | char | NA | NA |
| LSW | the LSW database with mean properties per Local Surface Water | data.table | NA | NA |

## BLN output variables

When the function bln_field has been used to assess the quality of the
soil, then by default all soil indicators and BLN soil quality scores
are calculated. A soil indicator is a number varying between zero (value
0) and one (value 1) expressing the distance to target. The target is
met when the distance equals to 1. There are serious bottlenecks when
the indicator value approaches zero. Similarly, a high score represents
a high soil quality. Soil quality scores are basically a weighted mean
of a subset of soil indicators, where the weighing procedure accounts
for the distance to target.

All output variables are listed in the table below:

| code | parameter |
|:---|:---|
| i_b_di | The soil indicator value reflecting distance to target for disease supressiveness in view of crop production |
| i_b_sf | The soil indicator value reflecting distance to target for soil microbial activity in view of crop production |
| i_c_k | The soil indicator value reflecting distance to target for potassium supply in view of crop production |
| i_c_mg | The soil indicator value reflecting distance to target for magnesium supply in view of crop production |
| i_c_n | The soil indicator value reflecting distance to target for nitrogen supply in view of crop production |
| i_c_p | The soil indicator value reflecting distance to target for phosphorus supply in view of crop production |
| i_c_ph | The soil indicator value reflecting distance to target for soil pH in view of crop production |
| i_c_s | The soil indicator value reflecting distance to target for sulfur supply in view of crop production |
| i_p_as | The soil indicator value reflecting distance to target for aggregate stability in view of crop production |
| i_p_co | The soil indicator value reflecting distance to target for subsoil compaction in view of crop production |
| i_p_cr | The soil indicator value reflecting distance to target for crumbleability in view of crop production |
| i_p_ds | The soil indicator value reflecting distance to target for drought stress in view of crop production |
| i_p_du | The soil indicator value reflecting distance to target for wind erodibility in view of crop production |
| i_p_ro | The soil indicator value reflecting distance to target for rootability in view of crop production |
| i_p_se | The soil indicator value reflecting distance to target for topsoil sealing in view of crop production |
| i_p_whc | The soil indicator value reflecting distance to target for water retention in view of crop production |
| i_p_wo | The soil indicator value reflecting distance to target for workability in view of crop production |
| i_p_ws | The soil indicator value reflecting distance to target for water stress in view of crop production |
| i_clim_csat | The soil indicator value reflecting distance to target for carbon saturation in mineral soils in view carbon sequestration potential using DL model |
| i_clim_osb | The soil indicator value reflecting distance to target for carbon soil balance in view carbon sequestration potential |
| i_clim_rothc | The soil indicator value reflecting distance to target for carbon saturation in mineral soils in view carbon sequestration potential using RothC model |
| i_clim_somers | The soil indicator value reflecting distance to target for carbon saturation in peat soils in view carbon sequestration potential using SOMERS model |
| i_gw_gwr | The soil indicator value reflecting distance to target for OBICs groundwater recharge in view of groundwater regulation and purification |
| i_gw_ngw | The soil indicator value reflecting distance to target for BBWPs nitrogen leaching risks in view of groundwater regulation and purification |
| i_gw_nlea | The soil indicator value reflecting distance to target for OBICs nitrogen leaching risks in view of groundwater regulation and purification |
| i_gw_nret | The soil indicator value reflecting distance to target for OBICs topsoil nitrogen retention in view of groundwater regulation and purification |
| i_gw_pest | The soil indicator value reflecting distance to target for OBICs pesticide leaching in view of groundwater regulation and purification |
| i_gw_wb | The soil indicator value reflecting distance to target for BBWPs topsoil water retention in view of groundwater regulation and purification |
| i_nut_k | The soil indicator value reflecting distance to target for potassium use efficiency in view of nutrient recycling and reuse |
| i_nut_n | The soil indicator value reflecting distance to target for nitrogen use efficiency in view of nutrient recycling and reuse |
| i_nut_nue | The soil indicator value reflecting distance to target for BBWPs nutrient use efficiency in view of nutrient recycling and reuse |
| i_nut_p | The soil indicator value reflecting distance to target for phosphorus use efficiency in view of nutrient recycling and reuse |
| i_sw_nret | The soil indicator value reflecting distance to target for OBICs nitrogen runoff risks in view of surface water regulation and purification |
| i_sw_nro | The soil indicator value reflecting distance to target for OBICs nitrogen retention in view of surface water regulation and purification |
| i_sw_nsw | The soil indicator value reflecting distance to target for BBWPs nitorgen runoff risk in view of surface water regulation and purification |
| i_sw_psw | The soil indicator value reflecting distance to target for BBWPs phosphorus runoff risk in view of surface water regulation and purification |
| s_bln_esd_clim | The BLN soil quality score for the ecosystem service carbon sequestration and climate regulation |
| s_bln_esd_nut | The BLN soil quality score for the ecosystem service nutrient recycling and reuse |
| s_bln_esd_prod | The BLN soil quality score for the ecosystem service crop production |
| s_bln_esd_water | The BLN soil quality score for the ecosystem service water regulation and purification |
| s_bln_prod_b | The aggregated soil indicator value for biological soil functions supporting crop production |
| s_bln_prod_c | The aggregated soil indicator value for chemical soil functions supporting crop production |
| s_bln_prod_p | The aggregated soil indicator value for physical soil functions supporting crop production |
| s_bln_clim | The aggregated soil indicator value for soil functions supporting carbon sequestration and climate regulation |
| s_bln_gw_quality | The aggregated soil indicator value for soil functions supporting groundwater regulation |
| s_bln_gw_quantity | The aggregated soil indicator value for soil functions supporting groundwater purification |
| s_bln_nut | The aggregated soil indicator value for soil functions supporting nutrient recycling and reuse |
| s_bln_sw_quality | The aggregated soil indicator value for soil functions supporting surface water purification |
| s_bln_total | The total BLN soil quality score |
