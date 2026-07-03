# Do check and expand crop input table for RothC for the Netherlands

Helper function to check the content and format of the crop input table.

## Usage

``` r
bln_rothc_input_crop(dt = NULL, B_LU_BRP = NULL, cf_yield)
```

## Arguments

- dt:

  (data.table) Table with crop rotation and related crop properties for
  Carbon input.

- B_LU_BRP:

  (numeric) The crop code

- cf_yield:

  (numeric) A yield correction factor (fraction) if yield is higher than
  regional average

## Details

The crop table used as input for carbon modelling requires at minimum
data on effective organic matter inputs and related year. This helper
function assists the checking and controlling of crop properties
involved.

To run this function, the dt requires as input: B_LU (a crop id),
B_LU_NAME (a crop name, optional), B_LU_EOM (the effective organic
matter content, kg/ha), B_LU_EOM_RESIDUE (the effective organic matter
content for crop residues, kg/ha), and the B_LU_HC (the humification
coeffient,-). if dt is NULL, then the crop input will be prepared using
function
[rothc_scenario](https://nmi-agro.github.io/BLN/reference/rothc_scenario.md)
using scenario 'BAU'
