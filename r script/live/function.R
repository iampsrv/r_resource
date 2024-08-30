my_function <- function() { # create a function with the name my_function
  print("Hello World!")
  
  print("another instruction")
  
  print("another instruction")
  
  print("another instruction")
}
my_function()


print("Hello World!")



usdtoeuro <- function(usd) {
  return(usd*0.90)
}

eurotousd <- function(euro) {
  return(euro*1.11)
}

usdtoeuro1 <- function(usd,conversion_rate) {
  final_value <- usd*0.90+conversion_rate
  return(final_value)
}

eurotousd1 <- function(euro, conversion_rate= 1000) {
  final_value <- euro*1.11 + conversion_rate
  return(final_value)
}

conversion_rate = 1.5

usdtoeuro1(8765,conversion_rate)
usdtoeuro1(9865,conversion_rate)
usdtoeuro1(751,conversion_rate)

eurotousd1(321)
eurotousd1(321,conversion_rate)
eurotousd1(456,conversion_rate)
eurotousd1(789,conversion_rate)
