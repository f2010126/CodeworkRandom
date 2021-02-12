3+4

exp(1)

log(64, base = 2)

2 ** 6

3 * 4

3 ** 4

3^4

2 ** 4

5 - 2

10 / 3

10 / 0

-4 * 2

sin(pi)

1.224606 * 10 ** (-16)

sin(0)

sin(0.5 * pi)

cos(0)

# comments

# hashtag can be used to make comments
# I strongly recommend you to use comments in your code
# because otherwise, you may not understand it anymore
# if you look at it in something like 2-3 weeks

# variables

x = 4
x

2*x

x -x 

x**x

y = 2

x * y

y / x

x = 2.45678

# in programming, we use . instead of , for floating point numbers!


v1 = c(1,2,3)
v1

v1 * 3

v2 = c(4,5,6)

v1 + v2

M = matrix(c(1,2,0,4,5,6,1,8,9), byrow = TRUE, nrow = 3)
M

M * -1

solve(M)

M %*% solve(M)

M2 = matrix(c(1,12,0,41,5,6,11,8,9), byrow = TRUE, nrow = 3)
M2

M+M2

eigen(M)

# libaries

library(pracma)
?pracma

?eigen











# dataframes

# setwed to folder of script
# install rstudioapi package first!
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))

df = read.csv("persons.csv")

colnames(df) = c("Name", "Height_in_cm", "ShoeSize", "Age")

# this is also important:
# in contrast to many other programming languages
# R starts counting 1!!
df[0,]

mean(df[,4])
mean(df$ShoeSize)
min
max(df$ShoeSize)
summary(df$ShoeSize)

df$Height_in_cm / df$ShoeSize

df$My_new_column = df$Height_in_cm / 100
df$My_new_column

##################################

my_square = function(x) {
  return(x*x)
}


# equivalent, but it only works when the function is very simple
f = function(x) x*x

f2 = function(x) 2*x  

f3 = function(x) x 

# plots

# to create a plot, we first need the x-values

x_vals = seq(-10, 10, 0.01)

length(x_vals)

plot(x_vals, my_square(x_vals))

plot(x_vals, my_square(x_vals), type="l", ylab="y", xlab="x", col="red")

lines(x_vals, f2(x_vals), col="blue")

lines(x_vals, f3(x_vals), col="green")
