library(tidyr)
library(tidyverse)
library(ggplot2)
library(tidyr)
library(stringr)
rs <- read.csv("/Users/Fang/Desktop/UBCcourses/522/rolling_stone_data/data/rolling_stone.csv")

firstplot <- ggplot(rs,aes(Year))+
  geom_histogram()+
  ggtitle("Albums number via Year")
firstplot

rs$Genre <- rs$Genre %>% 
  str_replace("[[:punct:]]","") 

unique(rs$Genre1)
rs <- rs %>% 
  separate(Genre, into = c("Genre1","Genre2"), sep=" ") 


secondplot <- ggplot(rs,aes(Genre1))+
  geom_bar(aes(fill=Genre1))+
  ggtitle("Genre Distribution")
secondplot

thirdplot <- ggplot(rs,aes(x=Year))+
  geom_freqpoly(aes(color=Genre1))+
  ggtitle("Genre Distribution via Year")
thirdplot

ggsave("results/firstplot.pdf",firstplot)
ggsave("results/secondplot.pdf",secondplot)
ggsave("results/thirdlot.pdf",thirdplot)