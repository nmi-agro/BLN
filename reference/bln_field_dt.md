# Calculate the BLN score for one field using a data.table as input

This functions wraps the functions of the BLN2 into one main function to
calculate the soil quality score for a single field. Whereas the
function \`bln_field\` requires all variables as separate inputs, the
function \`bln_field_dt\` allows one to send in a data.table

## Usage

``` r
bln_field_dt(dt, LSW = NULL, output = "all", runrothc = FALSE, mc = FALSE)
```

## Arguments

- dt:

  (data.table) A data.table with all input required to calculate BLN on
  field level

- LSW:

  (data.table) The averaged soil properties (mean and sd) per Local
  Surface Water. Can be derived from bbwp_lsw_properties.

- output:

  (character) An optional argument to select output: scores, indicators,
  or all. (default = all)

- runrothc:

  (boolean) An argument to switch off rothc calculations due to running
  time (default: FALSE)

- mc:

  (boolean) option to run rothc in parallel on multicores
