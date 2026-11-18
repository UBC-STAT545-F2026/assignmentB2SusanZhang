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
    return(tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
  
  #calculating conversions for flour 
  if (type == "flour") {
    g <- cup * 120 #1 cup of flour equals 120 grams 
    mL <- cup * 237 #1 cup of flour equals 237 mL
    return (tibble(ingredient = type, cups = cup, grams = g, milliliters = mL))#output tibble
  }
  
  #calculating conversions for sugar
  if (type == "sugar") {
    g <- cup * 200 #1 cup of flour equals 200 grams 
    mL <- cup * 237 #1 cup of sugar equals 237 mL
    return (tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
  
  #calculating conversions for butter
  if (type == "butter") {
    g <- cup * 225 #1 cup of flour equals 120 grams 
    mL <- cup * 250 #1 cup of flour equals 250 mL
    return (tibble(ingredient = type, cups = cup, grams = g, milliliters = mL)) #output tibble
  }
}
