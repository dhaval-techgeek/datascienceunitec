#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 24-MARCH-2020

source(polutantmean.R)

sulfate <- pollutantmean("specdata", "sulfate", 1:10)
sulfate
#OUTPUT: 4.064128

nitrate <- pollutantmean("specdata", "nitrate", 23)
nitrate
#OUTPUT: 1.280833