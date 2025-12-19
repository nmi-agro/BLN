# Convert possible B_AER_CBS values to standardized values

This function formats information of Agricultural Economic Region so it
can be understood by other OBIC functions

## Usage

``` r
bln_format_aer(B_AER_CBS, type = "name")
```

## Arguments

- B_AER_CBS:

  (character) The agricultural economic region in the Netherlands (CBS,
  2016)

- type:

  (character) the desired output: the AER_CBS code ("code") or the
  AER_CBS name ("name")

## Value

A standardized B_AER_CBS value as required for the OBIC functions. A
character string.

## Examples

``` r
bln_format_aer(c("LG13","LG12"))
#> [1] "Zuidelijk Veehouderijgebied" "Zuidwest-Brabant"           
bln_format_aer(c("LG13","LG12",'Rivierengebied'))
#> [1] "Zuidelijk Veehouderijgebied" "Zuidwest-Brabant"           
#> [3] "Rivierengebied"             
```
