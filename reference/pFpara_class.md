# Parameter estimation based on class of Staringreeks (Tabel 3, Wosten 2001)

Parameter estimation based on class of Staringreeks (Tabel 3, Wosten
2001)

## Usage

``` r
pFpara_class(Pklei, Pleem, Psom, M50)
```

## Arguments

- Pklei:

  (numeric) The clay (\<2um) content of the soil (%)

- Pleem:

  (numeric) The loam (\<50um) content of the soil (%) Pleem \> 0

- Psom:

  (numeric) The organic matter content of the soil (%) Psom \> 0

- M50:

  (numeric)size of sand fraction (um)

## Value

a table with the following columns: ThetaR (numeric) residual water
content (cm3/cm3) ThetaS (numeric) saturated water content (cm3/cm3)
alfa (numeric) related to the inverse of the air entry suction, alfa \>
0 (1/cm) n (numeric) a measure of the pore-size distribution, n\>1,
dimensionless ksat (numeric) saturated hydraulic conductivity (cm/d)

## Examples

``` r
pFpara_class(Pklei = 25, Pleem = 15, Psom = 4.5,M50 = 150)
#>    ThetaR ThetaS   alfa     n  ksat
#>     <num>  <num>  <num> <num> <num>
#> 1:   0.01   0.43 0.0064  1.21   0.7
pFpara_class(Pklei = 45, Pleem = 3, Psom = 4.5,M50 = 150)
#>    ThetaR ThetaS   alfa     n  ksat
#>     <num>  <num>  <num> <num> <num>
#> 1:   0.01   0.59 0.0195 1.109  4.53
```
