#Author: Dhaval Shah(Student Id: 1535740)

# H0;
u = 100

# H1;u != 100

x = 110
Q = 10
n = 30

#Calculation of test statistics

z = (x-u)/(Q/sqrt(n))
print(paste("Z =",z))

alpha = 0.01
# 1-0.5alpha = 0.995

# In NORMAL DISTRIBUTION TABLE, only find nearest value 0.9951
z0 = 2.5+0.08 

if (z <= z0*(-1) | z > z0 ) {
  print("Medication didn't affect intelligence")
} else {
  print("Medication significntly affect intelligence")
}

L = 110 - z0 * Q/sqrt(n)
U = 110 + z0 * Q/sqrt(n)

print("Confidence Interval:")
print(paste("Lower Limit:", L))
print(paste("Upper Limit:", U))