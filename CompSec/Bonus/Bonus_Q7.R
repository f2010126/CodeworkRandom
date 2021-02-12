# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 31.01.21

#install.packages("Deriv")
library(Deriv)

f <- function(x) x**2 * sin(x-3) * exp(-0.5*x)
f.prime <- function(x) Deriv(f(x),'x')
f.double.prime <- function(x) Deriv(f.prime(x), 'x')
newton = function(f.prime, f.double.prime, x0, tol) {
  x_next <- f(x0) - (f.double.prime(x0))
  step = 1
  while (!(abs(x_next-x0) < tol)){
    x0 <- x_next
    x_next <- f(x0) - (f.prime(x0)/f.double.prime(x0))
    step <- step + 1
  }

}
newton(f.prime, f.double.prime, 5, 10**-6)