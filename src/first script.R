#read data from github link
rolling_stone=read.csv("https://raw.githubusercontent.com/dahaohanbao/rolling_stone_data/master/albumlist.csv", header=TRUE)

#show the first 6 line from rolling_stone table
head(rolling_stone)
str(rolling_stone)

#write csv file to data folder
write.csv(rolling_stone,file="/Users/Fang/Desktop/UBCcourses/522/rolling_stone_data/data/rolling_stone.csv")

