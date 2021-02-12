# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 15.01.21

# Sectioning methods
# Golden Section, Dichotomous, Secant search

f <- function(x) (sqrt(exp(x)) - 5*x)

dichotomous = function(f, l, r, delta) { L=r-l
if (L < 2 * delta) { # check convergence
return ((r + l)/2) }
  xil = l + 0.5 * (L - delta)
  xir = l + 0.5 * (L + delta)
  f.xil = f(xil)
  f.xir = f(xir)
if (f.xil > f.xir) {
return (dichotomous(f, xil, r, delta))
} else if(f.xil < f.xir) {
return (dichotomous(f, l, xir, delta))
} else { # ignored for the sake of readability
} }

# dichotomous(f,4, 6, 0.001)

g <- (sqrt(5) - 1) * 0.5

goldensection<- function(f, l, r, eps){
  L <- r-l
  if(L < eps){
    return (l+r)*0.5
  }
  xl = l + (1-g)*L
  f.xl = f(xl)
  xr = l + g*L
  f.xr = f(xr)

  if(f.xr > f.xl){
    # value is to left
    goldensection(f,l, xr, eps)
  }
  else if(f.xl > f.xr){
    # value is to right
    goldensection(f,xl, r, eps)
  }
  else {
    # nothing
  }
}

goldensection1 = function(f, l, r, eps) {
  L=r-l
      if (L < eps) { # check convergence
         return ((l + r) / 2) }
  g = 0.618
  xil = l + (1 - g)*L
  xir = l + g * L
  f.xil = f(xil)
  f.xir = f(xir)
      if (f.xil > f.xir) {
        return (goldensection(f, xil, r, eps))
      } else if(f.xil < f.xir) {
        return (goldensection(f, l, xir, eps))
      } else { # ignored for the sake of readability
         }
}

# goldensection(f, 4, 6, 10**-5)
# goldensection1(f, 4, 6, 10**-5)

secantMethod<- function(f, x0, x1, eps){

  if(abs(x1 - x0) < eps){
    return()
  }
  f.x0 = f(x0)
  f.x1 = f(x1)
  x2 = x1 - f.x1((x1-x0)/(f.x1-f.x0))

  secantMethod(f, x1, x2, eps)
}

secantMethod(f, 1, 2, 0.01)