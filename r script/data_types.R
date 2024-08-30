# Data Types in R

# Numeric (default type for numbers)
num_var <- 42.5
print(paste("Numeric:", num_var))
print(paste("Type:", class(num_var)))

# Integer (explicitly specified using the 'L' suffix)
int_var <- 42
print(paste("Integer:", int_var))
print(paste("Type:", class(int_var)))

# Character (text/string)
char_var <- "Hello, R!"
print(paste("Character:", char_var))
print(paste("Type:", class(char_var)))

# Logical (boolean values)
log_var <- TRUE
print(paste("Logical:", log_var))
print(paste("Type:", class(log_var)))

# Factor (categorical data)
factor_var <- factor(c("Male", "Female", "Female", "Male"))
print("Factor:")
print(factor_var)
print(paste("Type:", class(factor_var)))

# Complex (numbers with real and imaginary parts)
complex_var <- 3 + 4i
print(paste("Complex:", complex_var))
print(paste("Type:", class(complex_var)))

# Raw (raw bytes)
raw_var <- charToRaw("R")
print("Raw:")
print(raw_var)
print(paste("Type:", class(raw_var)))

# Assigning and Displaying Variable Values
# Numeric
x <- 10.5
y <- 2

# Performing arithmetic operations
sum_result <- x + y
print(paste("Sum of x and y:", sum_result))

# Character concatenation
name <- "Alice"
greeting <- paste("Hello", name)
print(greeting)

# Logical operations
is_greater <- x > y
print(paste("Is x greater than y?", is_greater))

# Factor levels
print(paste("Levels of factor_var:", levels(factor_var)))
