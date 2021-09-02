library('fastDummies')
mat <- read.csv("student-mat.csv")
mat_prepros <- dummy_cols(mat,remove_first_dummy = TRUE)
mat_prepros <- mat_prepros[-c(1,2,4,5,6,9,10,11,12,16,17,18,19,20,21,22,23)]
data_mat <- mat_prepros[-c(16)]

data_mat_norm <-scale(data_mat)
Y <- c(mat_prepros$G3)

model <- lm(formula=Y~.,data=data_mat_norm)
summary(model)
