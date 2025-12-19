# Function to plot simple RothC simulation time series for a single field

Function to plot simple RothC simulation time series for a single field

## Usage

``` r
plot_bln_rothc_ts(dt, ptitle = NULL, psubtitle = NULL, lpos = c(0.2, 0.8))
```

## Arguments

- dt:

  (data.table) data.table with results from BLN RothC simulation,
  calculated with bln_rothc_field

- ptitle:

  (character) a title to be added to the figure. Default is NULL.

- psubtitle:

  (character) a subtitle to be added to the figure. Default is NULL.

- lpos:

  (vector) a two dimensional vector to position the legend inside the
  plot. Default c(0.2,0.8).
