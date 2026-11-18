#tests for the cup_converter() function

test_that("cup_converter works as documented, and throws the right message with the wrong inputs", {
  
  expect_equal(cup_converter("liquid", 1), tibble::tibble(ingredient = "liquid", cups = 1, grams = 240, milliliters = 250)) #checks conversion is correct for liquids
  
  expect_equal(cup_converter("flour", 1), tibble::tibble(ingredient = "flour", cups = 1, grams = 120, milliliters = 237)) #checks conversion is correct for flour
  
  expect_equal(cup_converter("sugar", 1), tibble::tibble(ingredient = "sugar", cups = 1, grams = 200, milliliters = 237)) #checks conversion is correct for sugar
  
  expect_equal(cup_converter("butter", 1), tibble::tibble(ingredient = "butter", cups = 1, grams = 225, milliliters = 250)) #checks conversion is correct for butter
  
  expect_error(cup_converter(1, "flour"), "type must be a character") #checks for errors in the type variable
  
  expect_error(cup_converter("flour", "1"), "cup must be a numeric") #checks for errors in the cup variable
  
  expect_error(cup_converter("melted butter", 1), "type must be either a liquid, flour, sugar, or butter") #checks an error message is output if type is not in the allowed list of ingredients 
  
})