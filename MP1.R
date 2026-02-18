#Load required libraries
library(dplyr)     
library(lubridate)
library(ggplot2)   
library(tidyr)

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

#Score is a quantitative variable that shows the total number of points a player earns in a match. The values range from 100 to around 8000.
cod %>%
  summarize(min = min(Score),
            max = max(Score),
            mean = mean(Score),
            median = median(Score),
            sd = sd(Score))

ggplot(cod, aes(x = Score)) +
  geom_histogram(binwidth = 400, fill = "green", color = "black") +
  labs(title = "Distribution of Scores",
       x = "Score", y = "Count")

#TotalXP is a quantitative variable that refers to the cumulative experience points a player has earned through various sources like kills, objectives, challenges, and other actions in their entire career.
cod %>%
  summarize(min = min(TotalXP),
            max = max(TotalXP),
            mean = mean(TotalXP),
            median = median(TotalXP),
            sd = sd(TotalXP))

ggplot(cod, aes(x = TotalXP)) +
  geom_histogram(binwidth = 2000, fill = "skyblue", color = "black") +
  labs(title = "Distribution of TotalXP",
       x = "Total XP", y = "Count")

#Data Visualizations

#Is the player’s performance (TotalXP) changing over time?
dates_clean <- gsub(" UTC", "", cod$Date)
months <- month(dates_clean, label = TRUE, abbr = FALSE)

ggplot(cod, aes(x = months, y = TotalXP, color = months)) +
  geom_boxplot() +
  labs(title = "Player's Performance (TotalXP) Over Time",
       x = "Month", y = "Total XP")

#Does game type influence eliminations? Do elimination counts vary across different game types?
ggplot(cod, aes(x = GameType, y = Eliminations, fill = GameType)) +
  geom_boxplot() +
  labs(title = "Elimination Counts by Game Type",
       x = "Game Type",
       y = "Eliminations")
