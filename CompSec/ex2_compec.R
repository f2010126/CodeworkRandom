# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 12.02.21

# 3
f<- function(x) sqrt(exp(x)) - (5*x)


xval <- seq(-10, 10, by= 1)
for(x in xval){
  print(x)
  print(f(x))
}

y <- f(x)
plot(x,y)

# h

f <- function(x) sqrt(exp(x)) - (5*x)

# L < 2*del
dichotomous_search = function(f, l, r, del ){

  L = r-l
  if(L < 2*del){
    return((l+r)/2)
  }

  x_l = l + (L-del)/2
  x_r = l +  (L+del)/2
  f.xl = f(x_l)
  f.xr = f(x_r)
  if (f.xl > f.xr) {
    return (dichotomous_search(f,x_l,r,del))
  }
  else if(f.xl < f.xr){
    r =x_r
    return (dichotomous_search(f,l,x_r,del))
  }else {
    # nothing
  }
}

my_val =dichotomous_search(f, 4, 6, 0.001)


golden_section = function(f,r,l,ep){
  gr = 0.618
  L = gr*(r-l)
  if(L < ep){
    return((l+r)/2)
  }
  x_l = l + gr*L
  x_r = l +  (1-gr)*L
  f.xl = f(x_l)
  f.xr = f(x_r)
  if (f.xl > f.xr) {
    return (golden_section(f,x_l,r,ep))
  }
  else if(f.xl < f.xr){
    r =x_r
    return (golden_section(f,l,x_r,ep))
  }else {
    # nothing
  }
}

my_val = golden_section(f,6, 4, 10**-5)
print(my_val)