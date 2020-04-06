#Author: DHAVAL NITINKUMAR SHAH(STUDENT ID: 1535740)
#Date: 24-MARCH-2020
#Revised: 06-APRIL-2020

pollutantvector <- function(directory, pollutant, id, p) {
  # Get full path of the specdata folder
  path <- paste(getwd(), "/", directory, "/", sep = "")
  files <- list.files(path)
  
  #create empty vector
  #vector_res <- vector(mode = "numeric", length = 0)
  vector_res <- vector()
  
  for (i in id) {
    #Read the file
    file_dir <- paste(path, files[i], sep = "")
    file_data <- read.csv(file_dir)

    #Find all the records that have NOT NULL 'sulfate' AND 'nitrate' values
    interested_data <- file_data[pollutant]
    final_data <- interested_data[!is.na(interested_data)]

    for(j in 1:length(final_data))
    {
      #Extract data of nitrate and sulfate
      if (final_data[j] > p) {
        vector_res <- c(vector_res, final_data[j])
      }
    }
    
  }
  
  return(vector_res)
  
}