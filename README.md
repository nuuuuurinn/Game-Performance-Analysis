# Call of Duty (COD) Match Performance Analysis

## Project Overview
The goal of this series was to understand the drivers of player performance, specifically focusing on how game types, weapon choices, and specific match actions (damage, eliminations) influence total score and experience points (XP).

### Mini Project 1:
This foundational phase is focused on understanding the distribution of the dataset. 

#### Key Tasks: 
Explored both categorical and quantitative variables: GameType (categorical), Result (categorical), Eliminations (quantitative), Score (quantitative) and TotalXP (quantitative).

#### Univariate Exploration Results: 
Discovered that "TDM" appears the most common among all of the hardcore mode matches, followed by "Hardpoint", and lastly "Domination" and "Kill Confirmed" with the same count. Regarding weaponry, "M16" is the the most selected primary weapon with a total of 48 counts, followed by "MP5", "Pellington 703" and "QBZ-83," while "MG 82" is the least preferred; this suggests that players generally favor medium-to-long range rifles that offer a balance between accuracy and damage, and may prefer weapons with higher mobility and faster handling.  In terms of performance, the majority of players have around 10 to 20 eliminations in a match, and the right-skewed distribution indicates that a very low number of players have a high count of eliminations. Similarly, most players scored between 1800 and 3500 points, with few achieving scores above 6000, showing that very high scores were uncommon and that the majority of players performed consistently within an average range. Finally, the TotalXP distribution is right-skewed with most players between 5000 and 15000, giving a clear peak near the lower end and showing that long-term or highly active players are very rare in this dataset.

#### Data Visualization Findings: 
Based on the boxplots, the player's Total XP doesn't really change much from June to August; the median values are close and the spread of the data is similar each month, suggesting that player activity stayed fairly steady over time with only small variations. When analyzing game type influence, players in Domination tend to have slightly higher and more consistent elimination counts, while Hardpoint and TDM show wider variation. Kill Confirmed has the lowest median eliminations, showing some shorter engagements or different objectives, but overall, the distribution shows which modes allow for more aggressive, elimination-heavy gameplay.

### Mini Project 2
We shifted focus to data integrity and categorical preferences.

• Key Tasks: Evaluated why na.omit() is often too aggressive for this dataset and explored map selection (Choice) and Damage distributions.

• Insight: Identified "Crossroads Strike" and "Rush" as the most frequently chosen maps, while "Amerika" was the least popular.

### Mini Project 3
The final phase involved building models to predict a player's Score based on match statistics.

• Key Tasks: Implemented LASSO Regression and Backward Selection for feature selection, built a Regression Tree with a 15-observation node minimum, and compared standardized regression coefficients to rank variable importance.

• Insight: Damage and Eliminations were consistently identified as the strongest predictors of Score across both linear and tree-based modeling methods.

### Tools Used
• Language: R

• Libraries: tidyverse (cleaning/plotting), readxl (data import), glmnet (LASSO), rpart (trees).

### Contributors
Nurin Mustapa(me), Anoop Ibrampur, Tony Shan
