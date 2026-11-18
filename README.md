
# assignmentB2SusanZhang

`assignmentB2SusanZhang` contains a function called `cup_converter` that
can be used to convert baking ingredient measurements in cups into grams
and milliliters. It requires you to specify what type of baking
ingredient (either a `"liquid"`, `"flour"`, `"sugar"`, or `"butter"`),
and the amount in cups. Running this function with these inputs will
output a tibble that displays equivalent volumes in grams and
milliliters.

## Installation

You can install this package from GitHub by:

``` r
`devtools::install_github("/UBC-STAT545-F2026/assignmentB2SusanZhang")`
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(assignmentB2SusanZhang)
library(tibble) #required for cup_converter function

#convert one cup of flour to mL and grams
cup_converter("flour", 1)
#> # A tibble: 1 × 4
#>   ingredient  cups grams milliliters
#>   <chr>      <dbl> <dbl>       <dbl>
#> 1 flour          1   120         237
```
