install.packages("dHSIC")
library(dHSIC)

n= 1000

X = runif(n , -2 , 2)
N = rnorm(n , 0 , 0.3)

Y = X^2 + N


##########Causal model

model_causal = lm(Y ~ poly(X, 2))

res_causal = model_causal$residuals

test_causal <- dhsic.test(X , res_causal)

pvalue_causal =test_causal$p.value


######Anticausal model

model_anticausal = lm(X ~ poly(Y, 2))

res_anticausal = model_anticausal$residuals

test_anticausal <- dhsic.test(Y , res_anticausal)

pvalue_anticausal = test_anticausal$p.value
