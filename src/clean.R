library(tidyr)
library(tidyverse)
library(stringr)
args <- commandArgs(trailingOnly=TRUE)
original_data <- args[1]
cleaned_data <- args[2]

clean <- function(){
rs <- read.csv(original_data)
rs$Genre <- rs$Genre %>% 
  str_replace("[[:punct:]]","") 

unique(rs$Genre1)
rs <- rs %>% 
  separate(Genre, into = c("Genre1","Genre2"), sep=" ") 

write.csv(rs,cleaned_data)	
}

clean()
 
