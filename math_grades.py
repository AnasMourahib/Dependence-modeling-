import pandas 
import numpy as np 
#df is a pandas data frame
df = pandas.read_csv('C:/Users/20254817/Desktop/Githib/Dependence-modeling-/data/mathmarks.csv') #Adapt the file path 
#inspect the shape of df
df.shape


##We transform df to numpy for easy manipulations and then compute the covariance matrix 
df.to_numpy()
df = df.transpose()

print(df)

### Calculate the covariance matrix using the method .cov from numpy package 
cov_mat = np.cov(df)
print(cov_mat)

### Calculate the precision matrix 
precision_mat = np.linalg.inv(cov_mat) * 1000
print(precision_mat)




### We calculate the correlation matrix 
corr_mat = np.corrcoef(df)
print(corr_mat)

###We calculate the inverse of the correlation matrix  
inv_corr_mat = np.linalg.inv(corr_mat) 
print(inv_corr_mat)

###We scale the correlation matrix to have unit entries on the diagonal

scaled_inv_corr_mat = np.zeros((5, 5))

for i in range(5):
    for j in range(5):
        scaled_inv_corr_mat[i][j] = inv_corr_mat[i][j] / ( pow(inv_corr_mat[i][i] , 0.5) * pow(inv_corr_mat[j][j] , 0.5)  )
        
        
print(scaled_inv_corr_mat)        

### Note that the submatrix scaled_inv_corr_mat[4:5 , 4:5] can be approximated by a null matrix, which is consistent with the graph structure suggested in the slides.