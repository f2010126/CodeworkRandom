# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 30.01.21

install.packages("plot3D")
library(plot3D)

setwd("/")
f_x_y <- function(x, y){
  (x**2)/2 + sin(x) + (y**2)/2 - cos(y)
}

x <- seq(-10,10, 0.1)
y <- seq(-10,10, 0.1)
z <- outer(x, y, f_x_y)
image(x, y, z)
contour(x,y,z, add = TRUE)


f_x_y2 <- function(x, y){
sin(x)**2 - cos(y)**2
}
z2 <- outer(x,y,f_x_y2)
persp(x, y, z2)