
set.seed(7)
# Step 1: Original values
C1 <- rnorm(100, mean = 20, sd = 1)
E1 <- 2 * C1 + rnorm(100, mean = 0, sd = 0.01)

# Plot Step 1
plot(C1, E1, col = "blue", pch = 16,
     xlab = "C", ylab = "E",
     main = "Regular Environment",
     cex.lab = 1.9,   # make xlab and ylab bigger
     cex.main = 1.5)  # make title bigger

# Step 2: Intervention C = a
a <- 0
C2 <- rep(a, 100)
E2 <- 2 * C2 + rnorm(100, mean = 0, sd = 0.01)

# Plot Step 2
plot(C2, E2, col = "red", pch = 16,
     xlab = "C", ylab = "E",
     main = "Faulty Environment",
     cex.lab = 1.5,   # bigger axis labels
     cex.main = 1.5)  # bigger title
