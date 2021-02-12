# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 30.01.21


A <- matrix(c(1, 2, 0, 3), nrow = 2, byrow = TRUE)
b <-matrix(c(5,4))
X <- c(-1, 1)

# ∇F(x) = 2AT (Ax − b)
grad_f = 2*(t(A))%*%(A %*% X - b)
print(grad_f)