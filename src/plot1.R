library(tidyr)
library(tidyverse)
library(ggplot2)
library(stringr)

args <- commandArgs(trailingOnly=TRUE)
table_path <- args[1]
figure_path <- args[2]

main <- function(){
	rs <- read.csv(table_path)

	firstplot <- ggplot(rs,aes(Year))+
  		geom_histogram()+
  		ggtitle("Albums number via Year")

ggsave(figure_path,firstplot)
	
}

main()
