# Plot boxplots for BLN indicators and scores for a group of fields

Plot boxplots for BLN indicators and scores for a group of fields

## Usage

``` r
plot_bln_boxplot(
  dt,
  pesd = "crop",
  ptitle = NULL,
  psubtitle = NULL,
  plegend = TRUE,
  pgroup = NULL,
  lpos = c(0.2, 0.8),
  ptype = "scores"
)
```

## Arguments

- dt:

  (data.table) data.table with results from BLN calculations.

- pesd:

  (vector) a vector to select all indicators per ESD to be plotted.
  Options: crop, water, carbon, nutrient, or scores

- ptitle:

  (character) a title to be added to the figure. Default is NULL.

- psubtitle:

  (character) a subtitle to be added to the figure. Default is NULL.

- plegend:

  (boolean) a boolean argument to show legend. Default is TRUE

- pgroup:

  (character) a variable to facetwrap the boxplot

- lpos:

  (vector) a two dimensional vector to position the legend inside the
  plot. Default c(0.2,0.8).

- ptype:

  (character) a figure type. options: scores, knelpunten
