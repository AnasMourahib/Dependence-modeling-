df = read.csv("C:/Users/20254817/Desktop/Githib/Dependence-modeling-/data/temperature_vs_altitude.csv" , sep = ";", header = FALSE)
X = df[,1]
Y = df[,2]


causal_model <- lm(Y ~ X)
residual_causal <- residuals(causal_model)