# Evaluate logistically initially and gausian eventually

This function evaluates the calculated values from an indicator using a
general logistic function

## Usage

``` r
bln_evaluate_logistic_gaus_down(x, b, x0, v, optimum, optimum_ofset = 1.5)
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

- optimum:

  (numeric) Point where x has approximaltly reached the optimal value

- optimum_ofset:

  (numeric) Multiplication factor to determine at what point gaussian
  evaluation should be applied

## Value

A transformed variable after applying a logistic evaluation function. A
numeric value.

## References

<https://en.wikipedia.org/wiki/Generalised_logistic_function>
<https://en.wikipedia.org/wiki/Gaussian_function>

## Examples

``` r
bln_evaluate_logistic_gaus_down(x = 5, b = 2, x0 = 3, v = 2.6, optimum = 1)
#> [1] 7.310252e-14
bln_evaluate_logistic_gaus_down(x = c(0.1,0.5,1.5,3.5), b = 2, x0 = 3, v = 2.6, optimum = 0.5)
#> [1] 1.073209e-01 1.457795e-01 3.865920e-03 3.647165e-33
```
