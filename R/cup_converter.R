#' @title Converts a baking ingredient from cups to milliliters and grams 
#' 
#' @description Given the amount of a baking ingredient in cups, outputs the equivalent volume in grams and milliliters. 
#' The baking ingredient must either be a "liquid", "flour", "sugar", or "butter"
#' 
#' @details This function requires `tibble::tibble()` to give a formatted output 
#' 
#' @param type is a character representing the baking ingredient, must be one of "liquid", "flour", "sugar", "butter"
#' 
#' @param cup is a numeric representing the amount in cups of your ingredient
#' 
#' @returns A tibble that displays the type, the amount in cups, an equivalent amount in grams, and in milliliters 
#' 
#' @examples
#' cup_converter("flour", 0.5)
#' cup_converter("butter", 2)
#' 
#' @export

cup_converter <- function(type, cup) {
  
  #check that type is a character
  if(!is.character(type)) {
    stop("type must be a character")
  }
  
  #list of allowed characters
  allowed_ingredients <- c("liquid", "flour", "sugar", "butter")
  
  #make sure type is in the allowed_ingredients list
  if (!(type %in% allowed_ingredients)) { #if the type variable is not in the list
    
    stop("type must be either a liquid, flour, sugar, or butter")
  }
  
  #check that cup is a numeric
  if (!is.numeric(cup)) {
    stop("cup must be a numeric")
  }
  
  #calculating conversions for liquid
  if (type == "liquid"){
    g <- cup * 240 # 1 cup equals 240 grams 
    mL <- cup * 250 #1 cup equals 250 mL
    return(tibble::tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
  
  #calculating conversions for flour 
  if (type == "flour") {
    g <- cup * 120 #1 cup of flour equals 120 grams 
    mL <- cup * 237 #1 cup of flour equals 237 mL
    return (tibble::tibble(ingredient = type, cups = cup, grams = g, milliliters = mL))#output tibble
  }
  
  #calculating conversions for sugar
  if (type == "sugar") {
    g <- cup * 200 #1 cup of flour equals 200 grams 
    mL <- cup * 237 #1 cup of sugar equals 237 mL
    return (tibble::tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
  
  #calculating conversions for butter
  if (type == "butter") {
    g <- cup * 225 #1 cup of flour equals 120 grams 
    mL <- cup * 250 #1 cup of flour equals 250 mL
    return (tibble::tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
}
