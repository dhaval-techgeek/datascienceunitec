#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 26-MARCH-2020

sum <- function(x,y)
{
  print(paste(x,"+",y,"=",x+y))
}

sub <- function(x,y)
{
  print(paste(x,"-",y,"=",x-y))
}

mul <- function(x,y)
{
  print(paste(x,"*",y,"=",x*y))
}

div <- function(x,y)
{
  print(paste(x,"/",y,"=",x/y))
}

factor <- function(x)
{
  factors <- c()
  for(i in 1:x) {
    if((x %% i) == 0) {
      factors <- c(factors, i)
    }
  }
  print(paste("Factor(s) of ",x,"="))
  print(factors)
}

isPrime <- function(x)
{
  flag = 0
  if(x > 1) {
    flag = 1
    for(i in 2:(x-1)) {
      if ((x %% i) == 0) {
        flag = 0
        break
      }
    }
  } 
  if(x == 2)    
  {
    flag = 1
  }
  if(flag == 1) {
    print(paste(x,"is a prime number."))
  } else {
    print(paste(x,"is not a prime number."))
  }
}
