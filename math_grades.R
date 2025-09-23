
install.packages("bnmonitor")

library(bnmonitor)

# Load the dataset
data("mathmarks")

# View the first few rows
head(mathmarks)

write.csv(mathmarks , file = "mathmarks.csv" ,  row.names = FALSE) #Adapt your file_path



