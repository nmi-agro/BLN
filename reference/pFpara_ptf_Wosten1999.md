# Estimate water retention curve parameters based on Wosten 1999

This function estimates water retention curve parameters using Pedo
transfer function of Wosten (1999) based on HYPRES

## Usage

``` r
pFpara_ptf_Wosten1999(Pklei, Psilt, Psom, Bovengrond)
```

## Arguments

- Pklei:

  (numeric) The clay content of the soil (%) within soil mineral part.
  Pklei \> 0

- Psilt:

  (numeric) The silt content of the soil (%) within soil mineral part.
  Psilt \> 0

- Psom:

  (numeric) The organic matter content of the soil (%). Psom \> 0

- Bovengrond:

  (boolean) whether topsoil (1) or not (0)

## Value

a table with the following columns:

Dichtheid (numeric) soil bulk density (g/cm3) ThetaR (numeric) residual
water content (cm3/cm3) ThetaS (numeric) saturated water content
(cm3/cm3) alfa (numeric) related to the inverse of the air entry
suction, alfa \> 0 (1/cm) n (numeric) a measure of the pore-size
distribution, n\>1, dimensionless ksat (numeric) saturated hydraulic
conductivity (cm/d)

## References

Wösten, J.H.M , Lilly, A., Nemes, A., Le Bas, C. (1999) Development and
use of a database of hydraulic properties of European soils. Geoderma 90
(3-4): 169-185.

## Examples

``` r
pFpara_ptf_Wosten1999(Pklei = 25, Psilt = 15, Psom = 4.5, Bovengrond = 1)
#>    Dichtheid ThetaR    ThetaS       alfa        n     ksat
#>        <num>  <num>     <num>      <num>    <num>    <num>
#> 1:  1.124447   0.01 0.5098983 0.05413231 1.169909 11.58728
pFpara_ptf_Wosten1999(Pklei = 45, Psilt = 3, Psom = 4.5, Bovengrond = 1)
#>    Dichtheid ThetaR    ThetaS       alfa        n     ksat
#>        <num>  <num>     <num>      <num>    <num>    <num>
#> 1:  1.124447   0.01 0.5043651 0.04231467 1.177021 17.64617
```
