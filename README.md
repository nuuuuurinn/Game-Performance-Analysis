# Call of Duty (COD) Match Performance Analysis

## Project Overview
The goal of this series was to understand the drivers of player performance, specifically focusing on how game types, weapon choices, and specific match actions (damage, eliminations) influence total score and experience points (XP).

### Mini Project 1
This foundational phase is focused on understanding the distribution of the dataset.

• Key Tasks: Explored GameType, Eliminations, Score, and TotalXP.

• Insight: Discovered that "Team Deathmatch" (TDM) was the most frequent game mode and that player performance remained relatively steady over the three-month data period (June–August).

### Mini Project 2
We shifted focus to data integrity and categorical preferences.

• Key Tasks: Evaluated why na.omit() is often too aggressive for this dataset and explored map selection (Choice) and Damage distributions.

• Insight: Identified "Crossroads Strike" and "Rush" as the most frequently chosen maps, while "Amerika" was the least popular.

### Mini Project 3
The final phase involved building models to predict a player's Score based on match statistics.

• Key Tasks: Implemented LASSO Regression and Backward Selection for feature selection, built a Regression Tree with a 15-observation node minimum, and compared standardized regression coefficients to rank variable importance.

• Insight: Damage and Eliminations were consistently identified as the strongest predictors of Score across both linear and tree-based modeling methods.

## Tools Used
• Language: R

• Libraries: tidyverse (cleaning/plotting), readxl (data import), glmnet (LASSO), rpart (trees).

## Contributors
Nurin Mustapa(me), Anoop Ibrampur, Tony Shan
