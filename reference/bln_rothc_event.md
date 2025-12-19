# Combine all EVENT data needed for RothC modelling for the Netherlands

This function combines required inputs into a data.table that is needed
as input for the RothC model.

## Usage

``` r
bln_rothc_event(crops, amendment, A_CLAY_MI, simyears)
```

## Arguments

- crops:

  (data.table) Table with crop rotation, cultivation management, year
  and potential Carbon inputs.

- amendment:

  (data.table) A table with the following column names: year, month,
  cin_tot, cin_hum, cin_dpm, cin_rpm and the fraction eoc over p
  (fr_eoc_p). Month is optional.

- A_CLAY_MI:

  (numeric) The clay content of the soil (%).

- simyears:

  (numeric) Amount of years for which the simulation should run,
  default: 50 years
