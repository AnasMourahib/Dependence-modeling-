import pandas 
import numpy as np 
#df is a pandas data frame
df = pandas.read_csv('C:/Users/20254817/Desktop/Dependence modeling/data/mathmarks.csv')
#shape is an attribute of df 
df.shape


##We transform df to numpy for easy manipulations and then compute the covariance matrix 
df.to_numpy()
df = df.transpose()

print(df)

### Calculate the covariance matrix using the method .cov from numpy package 
cov_mat = np.cov(df)
print(cov_mat)
1
### Calculate the precision matrix 

precision_mat = np.linalg.inv(cov_mat) * 1000
print(precision_mat)
