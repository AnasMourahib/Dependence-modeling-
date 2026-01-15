install.packages("dHSIC")
library(dHSIC)

n= 1000
a = 2
X = runif(n , 0 , 1)
N = runif(n , 0 , 1)
Y = a * X + N 
##########Causal model 

causal_model = lm(Y ~ X)
res_causal = causal_model$residuals
dtes_causal = dhsic.test(X , res_causal)
pvalue_causal = dtes_causal$p.value
plot(X , res_causal , xlab = "X" , ylab = "residual regression Y on X")
print("This is the pvalue for testing X independent of R(Y -> X)" , pvalue_causal)

########anticausal model 

anticausal_model = lm(X ~ Y)
res_anticausal = anticausal_model$residuals
dtes_anticausal = dhsic.test(Y , res_anticausal)
pvalue_anticausal = dtes_anticausal$p.value

plot(Y , res_anticausal , xlab = "X" , ylab = "residual regression X on Y")
print("This is the pvalue for testing Y independeny of R(X -> Y)" pvalue_anticausal)
