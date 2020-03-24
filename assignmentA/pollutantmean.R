#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 24-MARCH-2020

pollutantmean <- function(directory, pollutant, id = 1:332) {
  setwd("F:/Unitec/Sem1/Introduction_To_Data_Science/RScripts/assignment1")
  
  directory <- paste(getwd(),"/",directory,"/",sep="")
  
  csv_file_list <- list.files(directory)
  data <- NA
  for (index in id) {
    file_dir <- paste(directory,csv_file_list[index],sep="")
    csv_file_data <- read.csv(file_dir)
   
    # accumulate the data
    data <- rbind(data,csv_file_data)
  }
  # Calculate the mean and return
  mean(data[[pollutant]],na.rm = TRUE)
}