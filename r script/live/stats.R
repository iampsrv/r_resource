data <- c(10, 20, 30, 40, 50)
mean_value <- mean(data) # avg
print(mean_value)

data <- c(10, 20, 30, 40, 50)
median_value <- median(data) # (n+1)/2, n/2
print(median_value)

data <- c(10, 20, 20, 30, 30, 30, 40, 40, 40, 40, 40, 50)
mode_value <- function(x) {
  uniq_vals <- unique(x)
  uniq_vals[which.max(tabulate(match(x, uniq_vals)))]
}
print(mode_value(data))


data <- c(10, 20, 30, 40, 50)
std_dev <- sd(data)
print(std_dev)


data <- c(10, 20, 30, 40, 50) # 100+400+900+1600+2500
variance <- var(data)
print(variance)

