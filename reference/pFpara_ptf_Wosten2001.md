# Estimate water retention curve parameters based on Wosten 2001

This function estimates water retention curve parameters using Pedo
transfer function of Wosten (2001)

## Usage

``` r
pFpara_ptf_Wosten2001(Pklei, Pleem, Psom, M50, Bovengrond)
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

- Bovengrond:

  (boolean) whether topsoil (1) or not (0)

## Value

a table with the following columns: Dichtheid (numeric) soil bulk
density (g/cm3) ThetaR (numeric) residual water content (cm3/cm3) ThetaS
(numeric) saturated water content (cm3/cm3) alfa (numeric) related to
the inverse of the air entry suction, alfa \> 0 (1/cm) n (numeric) a
measure of the pore-size distribution, n\>1, dimensionless ksat
(numeric) saturated hydraulic conductivity (cm/d) l (numeric) dimension
parameter

## References

Wösten, J. H. M., Veerman, G. ., de Groot, W. J., & Stolte, J. (2001).
Waterretentie en doorlatendheidskarakteristieken van boven- en
ondergronden in Nederland: de Staringreeks. Alterra Rapport, 153, 86.
https://doi.org/153

## Examples

``` r
pFpara_ptf_Wosten2001(Pklei = 25, Pleem = 15, Psom = 4.5,M50 = 150, Bovengrond = 1)
#>    Dichtheid ThetaR    ThetaS       alfa        n     ksat         l
#>        <num>  <num>     <num>      <num>    <num>    <num>     <num>
#> 1:  1.296171   0.01 0.4866212 0.05112957 1.127914 82.77752 -3.524094
pFpara_ptf_Wosten2001(Pklei = 45, Pleem = 3, Psom = 4.5,M50 = 150,Bovengrond = 1)
#>    Dichtheid ThetaR   ThetaS       alfa        n     ksat         l
#>        <num>  <num>    <num>      <num>    <num>    <num>     <num>
#> 1:  1.185504   0.01 0.538194 0.07025564 1.084139 89.66426 -5.345368
```
