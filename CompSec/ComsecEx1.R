# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 06.01.21

# Use stdout as per normal...

print("Hello, world!")
# b
price <- 57
vat <- 0.19
net_price <- price*(1+vat)

# c
seed_even <- c()
seed_odd <- c()

for(i in 1:100){
  if(i%%2 == 0){
    seed_even <- c(seed_even, i)
  }else {
    seed_odd <- c(seed_odd, i)
  }
}

odd_arr <- seq(from = 1, to= 99, by= 2)
even_arr <- seq(from =2, to= 100, by=2)

# print(mean(seed_odd))
# print(mean(seed_even))
# print(var(seed_odd))
# print(var(seed_even))
# d
m <- matrix(c(odd_arr, even_arr), ncol =2)
print(m[17][1])
print("Done")

#soln
m <- as.data.frame(cbind(odd_arr, even_arr))
print(m[17,1])
print(m[1,2])

# e, f, g
setwd("/Users/diptisengupta/Desktop/CODEWORK/GitHub/CompSec/")
persons <- read.csv(file = 'persons.csv', header = FALSE, sep= ',')
colnames(persons) <- c('names','height', 'shoesize', 'age')

gender <- c('M','M','M','M','F','F','F')
persons$gender <- gender
only_girl <- subset(persons, gender == 'F')
dev <- sd(only_girl$height)


# g
library(shiny)



print("Done")


