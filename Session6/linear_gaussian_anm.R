install.packages("dHSIC")
library(dHSIC)

n= 1000
a = 2
X = rnorm(n , 0 , 1)
N = rnorm(n , 0 , 1)
Y = a * X + N 
##########Causal model 

causal_model = lm(Y ~ X)
res_causal = causal_model$residuals
dtes_causal = dhsic.test(X , res_causal)
pvalue_causal = dtes_causal$p.value

print("This is the pvalue for testing X independent of R(Y -> X)")

########anticausal model 

anticausal_model = lm(X ~ Y)
res_anticausal = anticausal_model$residuals
dtes_anticausal = dhsic.test(Y , res_anticausal)
pvalue_anticausal = dtes_anticausal$p.value


print("This is the pvalue for testing Y independeny of R(X -> Y)")