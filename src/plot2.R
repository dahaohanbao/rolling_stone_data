library(tidyr)
library(tidyverse)
library(ggplot2)
library(stringr)



args <- commandArgs(trailingOnly=TRUE)
table_path <- args[1]
figure_path <- args[2]

main <- function(){
rs <- read.csv(table_path)
secondplot <- ggplot(rs,aes(Genre1))+
  geom_bar(aes(fill=Genre1))+
  ggtitle("Genre Distribution")

ggsave(figure_path,secondplot)
}

main()
