# Do check and expand amendment input table for RothC for the Netherlands

Helper function to check the content and format of the amendment input
table.

## Usage

``` r
bln_rothc_input_amendment(dt = NULL, B_LU_BRP = NULL)
```

## Arguments

- dt:

  (data.table) Table with amendments and amendment properties for Carbon
  input.

- B_LU_BRP:

  (numeric) The crop code

## Details

The amendments table used as input for carbon modelling requires at
minimum data on effective organic matter inputs and related year. This
helper function assists the checking and controlling of amendments
properties involved.

To run this function, the dt requires as input:"P_NAME",
"year","month","P_OM","P_HC","p_p2o5", and "P_DOSE" if dt is NULL, then
the amendment input will be prepared using function
[rothc_scenario](https://nmi-agro.github.io/BLN/reference/rothc_scenario.md)
using scenario 'BAU'
