#Author: Dhaval Shah(Student Id: 1535740)

machine1 = c(16.03,16.04,16.05,16.05,16.02,16.01,15.96,15.98,16.02,15.99)
machine2 = c(16.02,15.97,15.96,16.01,15.99,16.03,16.04,16.02,16.01,16.00)

meanM1 = mean(machine1)
meanM2 = mean(machine2)

sdM1 = sd(machine1)
sdM2 = sd(machine2)

n1 = 10
n2 = 10

calculateSp <- function(n1,n2,sd1,sd2)
{
  return(sqrt(((n1 - 1)*sd1^2 + (n2-1)*sd2^2)/(n1 + n2 - 2)));
}

sp = calculateSp(n1,n2,sdM1,sdM2);

t0 = (meanM1 - meanM2)/(sp*sqrt(1/n1 + 1/n2))
print(t0)

t1 = t.test(machine1,machine2)
print(t1)

alpha = 0.05
# +- t 0.025,18 = +1 2.101

t = 2.101

if (t0 <= t) {
  print("Hypothesis accepted")
} else {
  print("Hypothesis rejected")
}