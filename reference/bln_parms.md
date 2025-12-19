# Table with BLN parameters being used in the package

This table contains all parameters being used in the BLN package to
calculate the soil quality index.

## Usage

``` r
bln_parms
```

## Format

A data.table with x rows and x columns:

- bln_parm_id:

  the parameter id

- bln_parm_name:

  the name of the parameter

- bln_parm_type:

  the type of the parameter. Options: measurement, field property

- bln_parm_description:

  a short description of the parameters

- bln_parm_unit:

  the unit of the parameter

- bln_parm_min:

  the maximum allowed value for the parameter

- bln_parm_max:

  the minimum allowed value for the parameter

- bln_parm_data_type:

  the data type of the parameter: numeric, character or boolean

- bln_parm_enum:

  does the parameter have predefined options

- bln_parm_options:

  allowed options for the parameteer
