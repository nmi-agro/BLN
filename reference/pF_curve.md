# Water retention curve

This function compute water content at given pressure head, using Van
Genuchten water retention curve

## Usage

``` r
pF_curve(head, thetaR, thetaS, alfa, n)
```

## Arguments

- head:

  (numeric) suction pressure (\[L\] or cm of water)

- thetaR:

  (numeric) residual water content (cm3/cm3)

- thetaS:

  (numeric) saturated water content (cm3/cm3)

- alfa:

  (numeric) related to the inverse of the air entry suction, alfa \> 0
  (1/cm)

- n:

  (numeric) a measure of the pore-size distribution, n\>1, dimensionless

## Value

theta (numeric) water content (cm3/cm3)

The moisture content of a soil given a certain pressure head. A numeric
value.

## Examples

``` r
pF_curve(head = 2.2, thetaR = 0.01, thetaS = 0.35, alfa = 0.3,n = 1.6)
#> [1] 0.3009997
pF_curve(head = 4.2, thetaR = 0.01, thetaS = 0.35, alfa = 0.3,n = 1.6)
#> [1] 0.2530601
```
