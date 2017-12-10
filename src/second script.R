rolling_stone <- read.csv("/Users/Fang/Desktop/UBCcourses/522/rolling_stone_data/data/rolling_stone.csv")
summary_rolling_stone <- summary(rolling_stone)

write.csv(summary_rolling_stone,file="/Users/Fang/Desktop/UBCcourses/522/rolling_stone_data/results/summarized_rolling_stone.csv")
