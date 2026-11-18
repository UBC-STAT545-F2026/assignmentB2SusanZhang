
# assignmentB2SusanZhang

`assignmentB2SusanZhang` contains a function called `cup_converter` that
can be used to convert baking ingredient measurements in cups into grams
and milliliters. It requires you to specify what type of baking
ingredient (either a `"liquid"`, `"flour"`, `"sugar"`, or `"butter"`),
and the amount in cups. Running this function with these inputs will
output a tibble that displays equivalent volumes in grams and
milliliters.

Though it’s not possible to have “negative” cups of ingredients, this
function accepts negative numerical values in case further mathematical
calculation are needed when baking!

## Installation

You can install this package from GitHub by:

``` r
`devtools::install_github("/UBC-STAT545-F2026/assignmentB2SusanZhang", ref = "0.1.0")`
```

## Example

This is a basic example which shows you how to obtain an equivalent
volume in grams and milliliters for one cup of flour:

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
