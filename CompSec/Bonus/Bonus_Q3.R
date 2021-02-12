# Title     : TODO
# Objective : TODO
# Created by: diptisengupta
# Created on: 09.01.21


control_flow_a <- function(n) {
  sum <- 0
  for(i in 0:n){
    sum <- sum + (1/2**i)
  }
  return(sum)
}

print(sum_2 <- control_flow_a(10))

# using Fermat theorm
control_flow_b <- function(n) {
  i <- 2
  while (i*i <=n){
    count <- 0
    if(n %% i == 0){
      while (n %% i == 0){
        count <- count + 1
        n <- as.integer(n / i)
      }
      if(( i %% 4 == 3) && (count %% 2 != 0)){
        return(FALSE)
      }
    }
    i <- i +1
  }
  return (n %% 4 != 3)
}

print(control_flow_b(100))