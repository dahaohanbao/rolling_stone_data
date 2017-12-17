library(tidyr)
library(tidyverse)
library(stringr)

args <- commandArgs(trailingOnly=TRUE)
data_path <- args[1]
table_path <- args[2]

main <- function(){
rolling_stone <- read.csv(data_path)
summary_rolling_stone <- summary(rolling_stone)

write.csv(summary_rolling_stone,table_path)
	
}
main()

