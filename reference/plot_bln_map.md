# Plot a BLN score or indicator on a map

Plot a BLN score or indicator on a map

## Usage

``` r
plot_bln_map(
  dt.scores,
  dt.region = NULL,
  parm,
  pbreak = NULL,
  plabel = NULL,
  pregio_level = NULL,
  pregio_label = NULL,
  ptitle = NULL,
  psubtitle = NULL,
  rev = FALSE,
  lpos = c(0.2, 0.8),
  ptype = "map"
)
```

## Arguments

- dt.scores:

  (data.table) data.table with results from BLN calculations. Includes a
  spatial geometry.

- dt.region:

  (data.table) data.table with a spatial geometry for a given region to
  be plot on top of the fields. Optional.

- parm:

  (character) one of the BLN indicator or scores to be plotted

- pbreak:

  (vector) a vector to categorize the input in classes. Default is NULL.

- plabel:

  (vector) a vector with label names used for the legend. Default is
  NULL.

- pregio_level:

  (vector) a vector with names used for the regio stats. Order defines
  plotting order. Default is NULL.

- pregio_label:

  (vector) a vector with label names used for the regio stats. Default
  is NULL.

- ptitle:

  (character) a title to be added to the figure. Default is NULL.

- psubtitle:

  (character) a subtitle to be added to the figure. Default is NULL.

- rev:

  (boolean) a boolean argument to reverse the color mapping. Default is
  FALSE.

- lpos:

  (vector) a two dimensional vector to position the legend inside the
  plot. Default c(0.2,0.8).

- ptype:

  (character) a figure type. options: map, mapplusstats
