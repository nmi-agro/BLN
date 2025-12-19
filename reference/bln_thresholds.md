# Table with country specific threshold values to evaluate soilquality'

This table contains the evaluation coefficients to convert a soil
function value into a soil quality score ranging from 0 to 1. The
scoring function migh vary per country, indicator and subcatogries
defined by variable categories of soil and crop types.

## Usage

``` r
bln_thresholds
```

## Format

A data.table with x rows and 12 columns:

- bln_trh_id:

  the threshold category id

- bln_country:

  the country name where the threshold coefficients apply

- bln_esd:

  the soil ecosystem service for which the threshold applies

- bln_category:

  the soil quality category: chemical, biological, physical, other

- bln_indicator:

  the bln indicator for which the threshold applies

- bln_indicator_name:

  the bln indicator name

- bln_threshold_cropcat:

  the bln crop category for which specific thresholds apply. if empy,
  then the threshold is generally applicable

- bln_threshold_soilcat:

  the bln soil category for which specific thresholds apply. if empy,
  then the threshold is generally applicable

- bln_scoringtype:

  the soil evaluation function to score the soil function. Options:
  parabolic, logistic, linear

- bln_st_c1:

  the first coefficient of the scoring function selected

- bln_st_c2:

  the second coefficient of the scoring function selected

- bln_st_c3:

  the third coefficient of the scoring function selected
