# Calculate indicator for soil resistance for soil based diseases

This function calculates the indicator for the resistance of the soil
against diseases and is indicated by the amount of soil life.

## Usage

``` r
bln_b_diseaseresistance(A_SOM_LOI)
```

## Arguments

- A_SOM_LOI:

  (numeric) The organic matter content of the soil in percentage

## Value

The evaluated score for the soil function to resist diseases. A numeric
value between 0 and 1.

## Examples

``` r
bln_b_diseaseresistance(A_SOM_LOI = 3.5)
#> [1] 0.7611956
bln_b_diseaseresistance(A_SOM_LOI = c(3.5,5.5,15,25))
#> [1] 0.7611956 0.9743163 0.9999997 1.0000000
```
