#Library
library(dplyr)
library(mosaic)
#Loads DF
df <- read.csv("nba_savant1627741.csv", header = TRUE)#nba_savant1627741.csv is a place holder
#Gives no. of times 3 makes in a row were made
n.hot <- sum(stats::filter(df$shot_made_flag, c(1, 1, 1), circular = TRUE, sides = 2) == 3)
#Reshuffle 
shuffled <- resample(df$shot_made_flag,replace = FALSE)
#Gives no. of times 3 makes in a row were made for the shuffled group
shuffle.n.hot <- sum(stats::filter(shuffled, c(1, 1, 1), circular = TRUE, sides = 2) == 3)

