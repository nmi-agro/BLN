# Calculate and evaluates the risk for subsoil compaction

This function calculates the indicator for the risk for soil compaction
of the subsoil. derived from van den Akker et al. (2013) Risico op
ondergrondverdichting in het landelijk gebied in kaart, Alterra-rapport
2409, Alterra, Wageningen University and Research Centre,

## Usage

``` r
bln_p_compaction(B_SC_WENR)
```

## Arguments

- B_SC_WENR:

  (character) The risk for subsoil compaction as derived from risk
  assessment study of Van den Akker (2006)

## Value

The evaluated score for the soil function for subsoil compaction. A
numeric value between 0 and 1.

## References

Akker et al. (2013) Risico op ondergrondverdichting in het landelijk
gebied in kaart, Alterra-rapport 2409, Alterra, Wageningen University
and Research Centre.

## Examples

``` r
bln_p_compaction(B_SC_WENR = 'Zeer groot')
#> [1] 0.2
bln_p_compaction(B_SC_WENR = c('Zeer groot','Van nature dicht'))
#> [1] 0.2 0.2
```
