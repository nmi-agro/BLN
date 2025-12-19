# Estimate default values for management

This function adds default management input variables given soil type
and land use. Function is a copy of the OBIC function.

## Usage

``` r
bln_add_management(
  ID,
  B_LU_BRP,
  B_SOILTYPE_AGR,
  M_GREEN = NA,
  M_NONBARE = NA,
  M_EARLYCROP = NA,
  M_COMPOST = NA_real_,
  M_SLEEPHOSE = NA,
  M_DRAIN = NA,
  M_DITCH = NA,
  M_UNDERSEED = NA,
  M_LIME = NA,
  M_NONINVTILL = NA,
  M_SSPM = NA,
  M_SOLIDMANURE = NA,
  M_STRAWRESIDUE = NA,
  M_MECHWEEDS = NA,
  M_PESTICIDES_DST = NA
)
```

## Arguments

- ID:

  (character) A field id

- B_LU_BRP:

  (numeric) The crop code from the BRP

- B_SOILTYPE_AGR:

  (character) The agricultural type of soil

- M_GREEN:

  (boolean) A soil measure. Are catch crops sown after main crop
  (optional, option: yes or no)

- M_NONBARE:

  (boolean) A soil measure. Is parcel for 80 percent of the year
  cultivated and 'green' (optional, option: yes or no)

- M_EARLYCROP:

  (boolean) A soil measure. Use of early crop varieties to avoid late
  harvesting (optional, option: yes or no)

- M_COMPOST:

  (numeric) The frequency that compost is applied (optional, every x
  years)

- M_SLEEPHOSE:

  (boolean) A soil measure. Is sleephose used for slurry application
  (optional, option: yes or no)

- M_DRAIN:

  (boolean) A soil measure. Are under water drains installed in peaty
  soils (optional, option: yes or no)

- M_DITCH:

  (boolean) A soil measure. Are ditched maintained carefully and slib
  applied on the land (optional, option: yes or no)

- M_UNDERSEED:

  (boolean) A soil measure. Is grass used as second crop in between
  maize rows (optional, option: yes or no)

- M_LIME:

  (boolean) measure. Has field been limed in last three years (option:
  yes or no)

- M_NONINVTILL:

  (boolean) measure. Non inversion tillage (option: yes or no)

- M_SSPM:

  (boolean) measure. Soil Structure Protection Measures, such as fixed
  driving lines, low pressure tires, and light weighted machinery
  (option: yes or no)

- M_SOLIDMANURE:

  (boolean) measure. Use of solid manure (option: yes or no)

- M_STRAWRESIDUE:

  (boolean) measure. Application of straw residues (option: yes or no)

- M_MECHWEEDS:

  (boolean) measure. Use of mechanical weed protection (option: yes or
  no)

- M_PESTICIDES_DST:

  (boolean) measure. Use of DST for pesticides (option: yes or no)

## Value

A data.table with all default estimates for the management measures that
are used for the Label Sustainable Soil Management. For each B_LU_BRP 15
management measures are given, all as boolean variables except for
M_COMPOST being a numeric value.

## Examples

``` r
bln_add_management(ID = 1, B_LU_BRP = 256, B_SOILTYPE_AGR = 'dekzand')
#>    M_GREEN M_NONBARE M_EARLYCROP M_COMPOST M_SLEEPHOSE M_DRAIN M_DITCH
#>     <lgcl>    <lgcl>      <lgcl>     <num>      <lgcl>  <lgcl>  <lgcl>
#> 1:    TRUE     FALSE        TRUE         0       FALSE   FALSE    TRUE
#>    M_UNDERSEED M_LIME M_NONINVTILL M_SSPM M_SOLIDMANURE M_STRAWRESIDUE
#>         <lgcl> <lgcl>       <lgcl> <lgcl>        <lgcl>         <lgcl>
#> 1:       FALSE   TRUE        FALSE  FALSE          TRUE           TRUE
#>    M_MECHWEEDS M_PESTICIDES_DST
#>         <lgcl>           <lgcl>
#> 1:       FALSE            FALSE
bln_add_management(ID = 1, B_LU_BRP = c(256,1019), B_SOILTYPE_AGR = rep('dekzand',2))
#>    M_GREEN M_NONBARE M_EARLYCROP M_COMPOST M_SLEEPHOSE M_DRAIN M_DITCH
#>     <lgcl>    <lgcl>      <lgcl>     <num>      <lgcl>  <lgcl>  <lgcl>
#> 1:    TRUE     FALSE        TRUE         0       FALSE   FALSE    TRUE
#> 2:    TRUE     FALSE        TRUE         0       FALSE   FALSE    TRUE
#>    M_UNDERSEED M_LIME M_NONINVTILL M_SSPM M_SOLIDMANURE M_STRAWRESIDUE
#>         <lgcl> <lgcl>       <lgcl> <lgcl>        <lgcl>         <lgcl>
#> 1:       FALSE   TRUE        FALSE  FALSE          TRUE           TRUE
#> 2:       FALSE   TRUE        FALSE  FALSE          TRUE           TRUE
#>    M_MECHWEEDS M_PESTICIDES_DST
#>         <lgcl>           <lgcl>
#> 1:       FALSE            FALSE
#> 2:       FALSE            FALSE
```
