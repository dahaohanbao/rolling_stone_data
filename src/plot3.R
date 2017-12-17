library(tidyr)
library(tidyverse)
library(ggplot2)
library(stringr)



args <- commandArgs(trailingOnly=TRUE)
table_path <- args[1]
figure_path <- args[2]

main <- function(){
rs <- read.csv(table_path)
thirdplot <- ggplot(rs,aes(x=Year))+
  geom_freqpoly(aes(color=Genre1))+
  ggtitle("Genre Distribution via Year")
ggsave(figure_path,thirdplot)
}

main()


