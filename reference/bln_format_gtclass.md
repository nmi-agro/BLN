# Determine groundwater table class based on highest and lowest mean groundwater levels

Determine groundwater table class based on highest and lowest mean
groundwater levels

## Usage

``` r
bln_format_gtclass(B_GWL_GHG, B_GWL_GLG)
```

## Arguments

- B_GWL_GHG:

  (numeric) The average highest groundwater level in cm below field
  level (Gemiddeld Hoogste Grondwaterstand)

- B_GWL_GLG:

  (numeric) The average lowest groundwater level in cm below field level
  (Gemiddeld Laagste Grondwaterstand)

## Value

A standardized B_GWL_CLASS value as required for BLN functions. A
character string.

## Examples

``` r
bln_format_gtclass(B_GWL_GHG = 35, B_GWL_GLG = 55)
#> [1] "IIb"
bln_format_gtclass(B_GWL_GHG = 70, B_GWL_GLG = 155)
#> [1] "VI"
```
