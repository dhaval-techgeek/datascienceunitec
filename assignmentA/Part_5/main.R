#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 26-MARCH-2020

source(math_operations.R)

while(1)
{
  print("*****************************************************")
  print("******Simple R Calculator - Select operation: *******")
  print("*****************************************************")
  print("1.Add")
  print("2.Subtract")
  print("3.Multiply")
  print("4.Divide")
  print("5.Factors")
  print("6.Prime")
  print("7.Exit")
  
  choice = as.integer(readline(prompt="Enter choice[1/2/3/4/5/6/7]: "))
  
  if (choice == 5 | choice == 6) {
    num1 <- as.integer(readline(prompt="Enter number: "))
  } else if(choice %in% c(1,2,3,4)) {
    num1 <- as.integer(readline(prompt="Enter first number: "))
    num2 <- as.integer(readline(prompt="Enter second number: "))
  } else{
    break
  }
  
  switch(choice,
                     sum(num1, num2),
                     sub(num1, num2),
                     mul(num1, num2),
                     div(num1, num2),
                     factor(num1),
                     isPrime(num1))
}