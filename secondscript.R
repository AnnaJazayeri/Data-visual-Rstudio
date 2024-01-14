# Set a seed for reproducibility
set.seed(123)

# Create three random normal vectors
x1 <- rnorm(100)
x2 <- rnorm(100)
x3 <- rnorm(100)

# Creating dataframe with columns a, b, and c
t <- data.frame(a = x1, b = x1 + x2, c = x1 + x2 + x3)

# Print standard deviation values
cat("Standard Deviation for Column 'a':", sd(t$a), "\n")
cat("Standard Deviation for Column 'b':", sd(t$b), "\n")
cat("Standard Deviation for Column 'c':", sd(t$c), "\n")

# Call plot function to visualize the data
plot(t)

# Add lines to the plot with rgb colors
plot(t$a, type = "l", ylim = range(t), lwd = 3, col = rgb(1, 0, 0, 0.3))  # Red with transparency
lines(t$b, type = "s", lwd = 2, col = rgb(0.3, 0.4, 0.3, 0.9))              # Greenish with transparency
points(t$c, pch = 20, cex = 4, col = rgb(0, 0, 1, 0.3))                   # Blue with transparency
