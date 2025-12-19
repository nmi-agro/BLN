# function to run RothC parallel for a series of fields

function to run RothC parallel for a series of fields

## Usage

``` r
rothc_parallel(this.xs, dt.c, scen, simyears = 50, p = NULL, final = TRUE)
```

## Arguments

- this.xs:

  (numeric) selected id for a single field

- dt.c:

  (data.table) set will all fields

- scen:

  (character) scenarios to be simulated. Options include BAU, BAUIMPR,
  CLT and ALL.

- simyears:

  (integer) value for the amount of years to simulate, default is 50
  years

- p:

  (progress bar) progress bar

- final:

  (boolean) option to select only the last year
