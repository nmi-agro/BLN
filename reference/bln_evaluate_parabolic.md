# Evaluate a soil quality function using a parabolic function

This function evaluates the calculated values from an indicator using a
parabolic function. After the optimum is reached the it stays at its
plateau.

## Usage

``` r
bln_evaluate_parabolic(x, x.top, must.plateau = TRUE)
```

## Arguments

- x:

  (numeric) The values of a calc function to be converted to an
  evaluation

- x.top:

  (numeric) The value at which x reaches the plateau

- must.plateau:

  (boolean) is there a plateau present in the parabolic function

## Value

A transformed variable after applying a parabolic evaluation function. A
numeric value.

## Examples

``` r
bln_evaluate_parabolic(x = 5, x.top = 8)
#> [1] 0.859375
bln_evaluate_parabolic(x = c(0.1,0.5,1.5,3.5), x.top = 6.5)
#> [1] 0.03053254 0.14792899 0.40828402 0.78698225
```
