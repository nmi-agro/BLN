# Calculate the crop rotation related C inputs of a field on monthly basis for the Netherlands

This function determines how much Carbon enters the soil throughout the
year given the crop rotation plan.

## Usage

``` r
bln_rothc_event_crop(crops, A_CLAY_MI)
```

## Arguments

- crops:

  (data.table) Table with crop rotation, crop management measures, year
  and potential Carbon inputs.

- A_CLAY_MI:

  (numeric) The clay content of the soil (%).
