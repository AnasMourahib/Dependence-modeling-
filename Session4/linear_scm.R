set.seed(7)
X1 = rnorm(100)
X2 = X1 + rnorm(100)
X3 = X1 + rnorm(100)
X4 = X2 + X3 + rnorm(100)
dat <- data.frame(X1, X2, X3, X4)

###Scatter plot

pairs(dat,
      pch = 19,
      col = rgb(0, 0, 0, 0.5),
      main = expression("Scatter plots of " ~ X[i] ~ " vs " ~ X[j]))


