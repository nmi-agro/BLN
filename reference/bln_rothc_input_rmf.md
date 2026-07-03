# Estimate the rate modifying factors for the RothC modelling

This function prepares the rate modifying factors for RothC given crop
cover

## Usage

``` r
bln_rothc_input_rmf(
  dt = NULL,
  B_LU_BRP = NULL,
  B_DEPTH = 0.3,
  A_CLAY_MI,
  simyears,
  cf_yield
)
```

## Arguments

- dt:

  (data.table) Table with crop rotation and related crop properties for
  Carbon input.

- B_LU_BRP:

  (numeric) The crop code

- B_DEPTH:

  (numeric) Depth of the cultivated soil layer (m), simulation depth.
  Default set to 0.3.

- A_CLAY_MI:

  (numeric) The clay content of the soil (%)

- simyears:

  (numeric) Amount of years for which the simulation should run,
  default: 50 years

- cf_yield:

  (numeric) A yield correction factor (fraction) if yield is higher than
  regional average

## Details

To run this function, the dt requires as input: B_LU (a crop id),
B_LU_NAME (a crop name, optional), B_LU_EOM (the effective organic
matter content, kg/ha), B_LU_EOM_RESIDUE (the effective organic matter
content for crop residues, kg/ha), and the B_LU_HC (the humification
coeffient,-). if dt is NULL, then the crop input will be prepared using
function
[rothc_scenario](https://nmi-agro.github.io/BLN/reference/rothc_scenario.md)
using scenario 'BAU'
