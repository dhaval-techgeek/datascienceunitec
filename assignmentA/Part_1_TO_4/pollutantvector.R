#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 24-MARCH-2020

pollutantvector <- function(directory, pollutant, id = 1:332, p) {
  directory <- paste(getwd(),"/","specdata","/",sep="")
  
  file_list <- list.files(directory)
  resultVec <- vector()
  
  for(index in id) {
    # Read the file,
    file_dir <- paste(directory,file_list[index],sep="")
    file_data <- read.csv(file_dir)
    
    # extract valid value to a vector
    validDataList <- apply(file_data[`pollutant`], 1, function(x) (!is.na(x)&&(x > p)))
    validData <- file_data[validDataList,]
    
    # append valid data into result data frame
    resultVec <- rbind(resultVec, validData)
    
  }
  
  return(resultVec)
}