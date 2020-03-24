#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 24-MARCH-2020

complete <- function(directory, id = 1:332) {
  
  directory <- paste(getwd(),"/","specdata","/",sep="")
  
  # Aux variables: Initialization
  file_list <- list.files(directory)
  ids <- vector()
  nobs <- vector()
  
  for (index in id) {
    # Read the file,
    file_dir <- paste(directory,file_list[index],sep="")
    file_data <- read.csv(file_dir)
    
    # acumulate ids and nobs values in the vectors    
    ids = c(ids,index)
    #complete.cases function retuns the data which is complete and has no missing value
    nobs = c(nobs,sum(complete.cases(file_data)))       
  }
  # Finally, Create the data frame using the vectors and return it
  result <- data.frame(id = ids, nobs = nobs)
  
  return(result)
}