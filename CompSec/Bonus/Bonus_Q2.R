# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 30.01.21

setwd("/")
persons <- read.csv(file = '../persons2.csv')
# formula for BMI: persons['weight']/(persons['height']/100)**2
bmi <-persons['weight']/(persons['height']/100)**2
persons['bmi'] <- persons['weight']/(persons['height']/100)**2
abnormal <- subset(persons, bmi <19 | bmi>24)
hist(persons$bmi, main="BMI histogram", xlab = 'bmi', ylab = 'Frequency', col = 'green')
#         name height shoesize age gender weight      bmi
# 3      Kevin    172       41  21      m     74 25.01352
# 5      Jerry    193       45  31      m     95 25.50404
# 7  Christian    184       46  18      m     83 24.51560
# 11      John    187       44  27      m     86 24.59321



