# Calculate and evaluate the yield depression due to drought or wetness in view of the capacity of soils to produce food

This function calculates the Water Stress Index (estimating the yield
depression as a function of water deficiency or surplus)

## Usage

``` r
bln_p_waterstress(B_HELP_WENR, B_LU_BRP, B_GWL_CLASS, WSI = "waterstress")
```

## Arguments

- B_HELP_WENR:

  (character) The soil type abbreviation, derived from 1:50.000 soil map

- B_LU_BRP:

  (numeric) The crop code (gewascode) from the BRP

- B_GWL_CLASS:

  (character) The groundwater table class

- WSI:

  (character) The type of Water Stress Index is required. Options:
  droughtstress, wetnessstress and the (combined) waterstress

## Value

The yield depression (in %) through wetness or drought stress (depending
on the WSI selected). Numeric value.

## References

STOWA (2005) Uitbreiding en Actualisering van de HELP-tabellen ten
behoeve van het Waternood instrumentarium
