# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 30.01.21

library(pracma)
dec_to_hex <- function(n){
  hex_values <- c('0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F')
  reverse <- ''
  while(n > 0){
    remain <- n %% 16
    n <- n - remain
    n <- n/16
    reverse <- paste(reverse,as.character(hex_values[remain+1],sep=''))
    # reverse + as.character(hex_values[remain+1])
  }
# return the reverse
  return(intToUtf8(rev(utf8ToInt(reverse))))
}
print(dec_to_hex(243043))


f <- function(x) (exp(x) + exp(-x))
x0<- 1
tay<- taylor(f,x0)
x<-seq(-5,5)
y_tay<- polyval(tay,x)
y_true <- f(x)

plot(x, y_true, type = "l", main =' Taylor Series Approximation',col = "blue", lwd = 3, ylim=c(0,20))
lines(x, y_tay, col = "red")
legend('topleft', inset=.05, legend= c("Taylor Series", "f(x)=e^x + e^-x")
       , lwd=c(2.5,2.5), col=c('red', 'blue'), bty='n', cex=.75)