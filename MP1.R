
library(dplyr)     
library(lubridate)
library(ggplot2)   
library(tidyr)
table(cod$GameType)

# Plot of distribution
ggplot(cod, aes(x = GameType, fill = GameType)) +
  geom_bar(color = "black") +
  labs(title = "Distribution of Game Types"
       x = "Game Type", y = "Count")
