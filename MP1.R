#Load required libraries
library(dplyr)     
library(lubridate)
library(ggplot2)   
library(tidyr)
table(cod$GameType)

#Read Excel file
cod <- read_excel("~/Downloads/CODGames2_mp.xlsx")

#GameType is a categorical variable that shows the different match modes. Values range from Hardcore Domination, Hardpoint, Kill Confirmed and lastly, Team DeathMatch.
table(cod$GameType)

ggplot(cod, aes(x = GameType, fill = GameType)) +
  geom_bar(color = "black") +
  labs(title = "Distribution of Game Types",
       x = "Game Type", y = "Count")

#Primary Weapon is a categorical variable that represents the main weapons selected depending on factors such as maps, player choices, and its values range from "Krig 6", "QBZ-83", "MP5" and many more.
table(cod$PrimaryWeapon)

ggplot(cod, aes(x = PrimaryWeapon)) +
  geom_bar(fill = "steelblue", color = "black") +
  labs(title = "Distribution of Primary Weapon",
       x = "Primary Weapon", y = "Count")

#Eliminations is a quantitative variable that shows the number of eliminations a player achieved in a match with values ranging from 2 to 39. 
cod %>% 
  summarize(min = min(Eliminations),
            max = max(Eliminations),
            mean = mean(Eliminations),
            median = median(Eliminations),
            sd = sd(Eliminations))

ggplot(cod, aes(x = Eliminations)) +
  geom_histogram(binwidth = 3, fill = "darkorange", color = "black") +
  labs(title = "Distribution of Eliminations",
       x = "Eliminations", y = "Count")
