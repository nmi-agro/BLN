# Linking table between crops and different functions in OBIC

This table helps to link the different crops in the OBIC functions with
the crops selected by the user

## Usage

``` r
bln_crops
```

## Format

A data.frame with 521 rows and 8 columns:

- crop_code:

  The BRP gewascode of the crop

- crop_name:

  The name of the crop, in lower case

- crop_cat1:

  Classification of crop per land use type (arable, maize, grass,
  nature)

- bln_country:

  The country name where the crop codes are applicable

- B_LU:

  The international crop code used in pandex

- B_LU_EOM:

  The effective organic matter supply via roots and root exudates (kg
  EOS/ha)

- B_LU_EOM_RESIDUE:

  The effective organic matter supply via crop residues (kg EOS/ha)

- B_LU_HC:

  The humification coefficient for the crop remainings left in soil
  after harvest

- B_LU_WATERSTRESS_OBIC:

  A crop category used in OBIC to express sensitivity to water stress

- B_LU_MAKKINK:

  A crop category used to link crop to Makkink correction factor to
  estimate actual evaporation
