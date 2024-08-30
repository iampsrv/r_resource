#lab means labels
# main mean Main title of chart

x <- c(1, 2, 3, 4, 5)
y <- c(2, 3, 5, 7, 11)
plot(x, y, main = "Basic Scatter Plot", xlab = "X-Axis", ylab =
       "Y-Axis")

x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
plot(x, y, type = "l", main = "Line Plot", xlab = "X-Axis", ylab =
       "Y-Axis")

counts <- c(10, 20, 15, 25)
barplot(counts, main = "Bar Plot", xlab = "Categories", ylab =
          "Counts", col = "red")

data <- rnorm(30)
print(data)
hist(data, main = "Histogram", xlab = "Values", ylab = "Frequency",
     col = "green")

data <- rnorm(100)
boxplot(data, main = "Box Plot", ylab = "Values")

slices <- c(10, 20, 30, 40)
labels <- c("A", "B", "C", "D")
pie(slices, labels = labels, main = "Pie Chart")


x <- c(1, 2, 3, 4, 5)
y1 <- c(2, 4, 6, 8, 10)
y2 <- c(3, 6, 9, 12, 15)
plot(x, y1, col = "blue", ylim = c(0, 15), xlab =
       "X-Axis", ylab = "Y-Axis", main = "Multiple Line Plot")
lines(x, y2, type = "l", col = "red")


x <- c(1, 2, 3, 4, 5)
dotchart(x, main = "Dot Plot", xlab = "Values")

library(ggplot2)
data <- data.frame(Group = rep(c("A", "B"), each = 50), Values =
                     c(rnorm(50), rnorm(50, mean = 2)))
ggplot(data, aes(x = Group, y = Values)) + geom_violin(fill =
                                                         "lightblue") + ggtitle("ggplot2 Violin Plot")