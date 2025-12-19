# Evaluate a soil quality function using the general logistic function

This function evaluates the calculated values from an indicator using a
general logistic function

## Usage

``` r
bln_evaluate_logistic(x, b, x0, v, increasing = TRUE)
```

## Arguments

- x:

  (numeric) The values of a calc function to be converted to an
  evaluation

- b:

  (numeric) The growth rate

- x0:

  (numeric) The offset of the x-axis

- v:

  (numeric) Affects the growth rate near the maximum

- increasing:

  (boolean) Should the evaluation increase (`TRUE`) with x or decrease
  (`FALSE`)?

## Value

A transformed variable after applying a logistic evaluation function. A
numeric value.

## References

<https://en.wikipedia.org/wiki/Generalised_logistic_function>

## Examples

``` r
bln_evaluate_logistic(x = 5, b = 2, x0 = 3, v = 2.6)
#> [1] 0.9930436
bln_evaluate_logistic(x = c(0.1,0.5,1.5,3.5), b = 2, x0 = 3, v = 2.6)
#> [1] 0.1073209 0.1457795 0.3095816 0.8864902
```
