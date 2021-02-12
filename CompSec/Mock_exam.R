# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 09.02.21

print(2*4*8 != 4**3)
print(52*81*22 <= 45**3)
print(5*log10(sqrt(57**5))>log10(1000**3))


fibbonaci <-function (n){
  f <- c(1, 1)
  for (i in 3:n){
    print(i)
    f[i] <- f[i-1] + f[i-2]
  }
  return(f[n])
}

fibbonaci_recursive <-function(n){
  if ((n == 0) || (n==1)) {
    return(1)
  }
  return (fibbonaci_recursive(n-1) + fibbonaci_recursive(n-2))
}
# assuming the series started with f0, f1,f2 etc
print(fibbonaci_recursive(5))

# c
library(pracma)

f <- function(x) 1/x**2

taylor(f,5,3)

# d -> REDO
# library(Deriv)
#
# f <- function (x) x[1] * x[2]
# f.x<- function() Deriv(f,'x')
# f.y <- function () Deriv(f,'y')
#
# print(c(f.x(0), f.y(0)))
#
# library(matrixcalc)
# H = optimHess(c(0,0), function (x) x[1], x[2],
#               control = (ndeps = 0.0001))
# is.indefinite(H)

# f
sum_poly <- function (n) {
  sum <- 0
  for(i in 0:n){
    poly <- i^5 - i^3 + i
    sum <- sum + poly
  }
  print(sum)
}

sum_poly(10)

# g
# use matrices x = [x, y ,z]
f <- function (x) (2*x[1]**4 - x[1]**3 + 2*x[2]**3*x[3] + x[3]**5)

x0 <- c(1,2,3)
h <- 0.001

optimHess(x0, f, control = h )