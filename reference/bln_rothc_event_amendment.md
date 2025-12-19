# Calculate the monthly timing of carbon inputs for different fertilizer strategies for the Netherlands

This function calculates the timing of carbon inputs (kg C per ha) based
on type of organic matter amendments and land use.

## Usage

``` r
bln_rothc_event_amendment(crops, amendment = NULL)
```

## Arguments

- crops:

  (data.table) Table with crop rotation, year and potential Carbon
  inputs.

- amendment:

  (data.table) A table with the following column names: year, month,
  cin_tot, cin_hum, cin_dpm, cin_rpm and the fraction eoc over p
  (fr_eoc_p). Month is optional.

## Details

This function increases temporal detail for time series of C inputs of
organic amendments. The inputs for organic amendments are organised in
the data.table amendment, where the carbon inputs has the unit kg C /
ha.

The output is an EVENT object.
