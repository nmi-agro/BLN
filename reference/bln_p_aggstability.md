# Calculate and evaluates the aggregate stability index based on occupation CEC

This function calculates and evaluates an aggregate stability index
given the CEC and its occupation with major cations.

## Usage

``` r
bln_p_aggstability(
  B_SOILTYPE_AGR,
  A_SOM_LOI,
  A_K_CO_PO,
  A_CA_CO_PO,
  A_MG_CO_PO
)
```

## Arguments

- B_SOILTYPE_AGR:

  (character) The type of soil

- A_SOM_LOI:

  (numeric) The organic matter content of soil in percentage

- A_K_CO_PO:

  (numeric) The occupation of the CEC with K (%)

- A_CA_CO_PO:

  (numeric) The occupation of the CEC with Ca (%)

- A_MG_CO_PO:

  (numeric) The occupation of the CEC with Mg (%)

## Value

The aggregate stability index of a soil given the Cation Exchange
Capacity and its composition with major cations. A numeric value.
