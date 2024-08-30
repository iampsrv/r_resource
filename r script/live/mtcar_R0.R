# Load the dataset
data(mtcars)

# Scatter plot of horsepower vs. MPG
plot(mtcars$hp, mtcars$mpg, 
     main = "Horsepower vs. MPG",
     xlab = "Horsepower (hp)", 
     ylab = "Miles Per Gallon (mpg)",
     pch = 19, col = "blue")

# Add a regression line
abline(lm(mpg ~ hp, data = mtcars), col = "red")

###########################################################

# Scatter plot of weight vs. MPG
plot(mtcars$wt, mtcars$mpg, 
     main = "Weight vs. MPG",
     xlab = "Weight (1000 lbs)", 
     ylab = "Miles Per Gallon (mpg)",
     pch = 19, col = "green")

# Add a regression line
abline(lm(mpg ~ wt, data = mtcars), col = "red")


###########################################################

# Boxplot of MPG by transmission type
boxplot(mpg ~ am, data = mtcars, 
        main = "MPG by Transmission Type",
        xlab = "Transmission (0 = Automatic, 1 = Manual)", 
        ylab = "Miles Per Gallon (mpg)",
        col = c("orange", "purple"))

# T-test to compare means
t.test(mpg ~ am, data = mtcars)

###########################################################

# Boxplot of horsepower by number of cylinders
boxplot(hp ~ cyl, data = mtcars, 
        main = "Horsepower by Number of Cylinders",
        xlab = "Number of Cylinders", 
        ylab = "Horsepower (hp)",
        col = c("lightblue", "lightgreen", "lightpink"))

# Summary statistics
aggregate(hp ~ cyl, data = mtcars, summary)

###########################################################

# Boxplot of MPG by number of cylinders
boxplot(mpg ~ cyl, data = mtcars, 
        main = "MPG by Number of Cylinders",
        xlab = "Number of Cylinders", 
        ylab = "Miles Per Gallon (mpg)",
        col = c("lightblue", "lightgreen", "lightpink"))

# Summary statistics
aggregate(mpg ~ cyl, data = mtcars, summary)


###########################################################

# Scatter plot of displacement vs. MPG
plot(mtcars$disp, mtcars$mpg, 
     main = "Displacement vs. MPG",
     xlab = "Displacement (cu.in.)", 
     ylab = "Miles Per Gallon (mpg)",
     pch = 19, col = "purple")

# Add a regression line
abline(lm(mpg ~ disp, data = mtcars), col = "red")


###########################################################
# Boxplot of MPG by number of gears
boxplot(mpg ~ gear, data = mtcars, 
        main = "MPG by Number of Gears",
        xlab = "Number of Gears", 
        ylab = "Miles Per Gallon (mpg)",
        col = c("cyan", "magenta", "yellow"))

# Summary statistics
aggregate(mpg ~ gear, data = mtcars, summary)
###########################################################
# Boxplot of MPG by number of carburetors
boxplot(mpg ~ carb, data = mtcars, 
        main = "MPG by Number of Carburetors",
        xlab = "Number of Carburetors", 
        ylab = "Miles Per Gallon (mpg)",
        col = c("salmon", "skyblue", "lightgreen", "pink"))

# Summary statistics
aggregate(mpg ~ carb, data = mtcars, summary)

###########################################################
# Normalize the data
mtcars_scaled <- scale(mtcars)

# Perform k-means clustering
set.seed(123) # for reproducibility
kmeans_result <- kmeans(mtcars_scaled, centers = 3, nstart = 25)

# Plot the clusters
plot(mtcars$mpg, mtcars$hp, 
     col = kmeans_result$cluster, 
     main = "Clustering of Cars",
     xlab = "Miles Per Gallon (mpg)", 
     ylab = "Horsepower (hp)",
     pch = 19)

# Add cluster centers
points(kmeans_result$centers[, c("mpg", "hp")], 
       col = 1:3, pch = 8, cex = 2)

###########################################################
# Build a linear regression model to predict MPG
model <- lm(mpg ~ hp + wt + cyl + disp, data = mtcars)
summary(model)

# Predict MPG for the cars in the dataset
predicted_mpg <- predict(model, newdata = mtcars)

# Plot actual vs. predicted MPG
plot(mtcars$mpg, predicted_mpg, 
     main = "Actual vs. Predicted MPG",
     xlab = "Actual MPG", 
     ylab = "Predicted MPG",
     pch = 19, col = "darkgreen")

abline(0, 1, col = "red") # Line of perfect prediction

###########################################################
# Summary statistics for performance metrics
summary_stats <- summary(mtcars[, c("mpg", "hp", "wt", "disp")])

# Print the summary statistics
print(summary_stats)

# (Additional analysis would require modern car data for a proper comparison)

###########################################################

# Bubble plot of Weight vs. MPG with bubble size representing Horsepower
symbols(mtcars$wt, mtcars$mpg, circles = mtcars$hp, 
        inches = 0.3, 
        fg = "white", bg = "lightblue",
        xlab = "Weight (1000 lbs)", ylab = "Miles Per Gallon (mpg)",
        main = "Bubble Plot: MPG vs. Weight with Horsepower")


###########################################################

hist(mtcars$mpg, 
     main = "Histogram of MPG",
     xlab = "Miles Per Gallon (mpg)",
     col = "lightblue", 
     border = "black")

###########################################################

barplot(table(mtcars$cyl), 
        main = "Bar Plot of Cylinder Count",
        xlab = "Number of Cylinders", 
        ylab = "Frequency",
        col = "lightgreen")

###########################################################
plot(density(mtcars$mpg), 
     main = "Density Plot of MPG",
     xlab = "Miles Per Gallon (mpg)",
     col = "red", 
     lwd = 2)


###########################################################
library(ggplot2)
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) + 
  geom_violin(fill = "lightblue") +
  labs(title = "Violin Plot of MPG by Cylinder Count", x = "Cylinders", y = "Miles Per Gallon (mpg)")

###########################################################
pie(table(mtcars$cyl), 
    main = "Pie Chart of Cylinder Distribution", 
    col = rainbow(length(unique(mtcars$cyl))))

###########################################################
# Normalize the data
scaled_data <- scale(mtcars[, c("hp", "wt", "mpg")])

# Apply k-means clustering
set.seed(123)
kmeans_result <- kmeans(scaled_data, centers = 3, nstart = 20)

# Add cluster information to the original dataset
mtcars$cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters
library(ggplot2)
ggplot(mtcars, aes(x = hp, y = mpg, color = cluster)) +
  geom_point(size = 3) +
  labs(title = "K-means Clustering of Cars Based on Performance",
       x = "Horsepower (hp)", y = "Miles Per Gallon (mpg)") +
  theme_minimal()

###########################################################
# Load necessary libraries
library(caret)

# Split the data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(mtcars$mpg, p = 0.7, list = FALSE)
trainData <- mtcars[trainIndex, ]
testData <- mtcars[-trainIndex, ]

# Train a linear regression model
model <- lm(mpg ~ hp + wt + cyl, data = trainData)

# Summarize the model
summary(model)

# Predict on the test set
predictions <- predict(model, newdata = testData)

# Compare predictions with actual values
results <- data.frame(Actual = testData$mpg, Predicted = predictions)
print(results)

# Calculate performance metrics (e.g., RMSE)
rmse <- sqrt(mean((results$Actual - results$Predicted)^2))
cat("Root Mean Squared Error:", rmse, "\n")

###########################################################
#Testing linear regression
# Create a data frame with custom values
new_car <- data.frame(hp = 150, wt = 3.2, cyl = 6)

# Predict the mpg using the linear regression model
predicted_mpg <- predict(model, newdata = new_car)

# Display the predicted mpg
cat("Predicted MPG for the custom car:", predicted_mpg, "\n")

###########################################################
# Logistic regression model
model <- glm(am ~ hp + wt + mpg, data = trainData, family = binomial)

# Summarize the model
summary(model)

# Predict on the test set
predictions <- predict(model, newdata = testData, type = "response")
predicted_classes <- ifelse(predictions > 0.5, 1, 0)

# Confusion matrix
confusionMatrix(factor(predicted_classes), factor(testData$am))

# Accuracy of the model
accuracy <- mean(predicted_classes == testData$am)
cat("Accuracy:", accuracy, "\n")

###########################################################
# Create a data frame with custom values
new_car <- data.frame(hp = 150, wt = 3.2, mpg = 21)

# Predict the probability of the car having manual transmission
predicted_probability <- predict(model, newdata = new_car, type = "response")

# Convert the predicted probability to a class (0 or 1)
predicted_class <- ifelse(predicted_probability > 0.5, 1, 0)

# Display the predicted class
cat("Predicted Transmission (0 = Automatic, 1 = Manual):", predicted_class, "\n")
###########################################################

# Create a categorical variable for mpg
mtcars$mpg_category <- cut(mtcars$mpg, breaks = 3, labels = c("Low", "Medium", "High"))

# Split the data into training and testing sets
set.seed(123)
trainIndex <- createDataPartition(mtcars$mpg_category, p = 0.7, list = FALSE)
trainData <- mtcars[trainIndex, ]
testData <- mtcars[-trainIndex, ]

# Train a decision tree model
library(rpart)
model <- rpart(mpg_category ~ hp + wt + cyl + disp, data = trainData, method = "class")

# Visualize the decision tree
library(rpart.plot)
rpart.plot(model)

# Predict on the test set
predictions <- predict(model, newdata = testData, type = "class")

# Confusion matrix
confusionMatrix(predictions, testData$mpg_category)

# Accuracy of the model
accuracy <- mean(predictions == testData$mpg_category)
cat("Accuracy:", accuracy, "\n")

###########################################################
# Train a random forest model
library(randomForest)
set.seed(123)
model <- randomForest(mpg ~ ., data = trainData, importance = TRUE)

# View variable importance
importance(model)
varImpPlot(model)

# Predict on the test set
predictions <- predict(model, newdata = testData)

# Calculate performance metrics (e.g., RMSE)
rmse <- sqrt(mean((testData$mpg - predictions)^2))
cat("Root Mean Squared Error:", rmse, "\n")


