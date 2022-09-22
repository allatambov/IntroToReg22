##### INSTALL LIBRARY FOR GRAPHS #####

install.packages("tidyverse")
library(tidyverse)

#############################################
######### PART 01:  LIFE EXPECTANCY #########
#############################################

##### LOAD DATA #####

life <- read.csv(file.choose())
summary(life)

##### REGRESSION MODEL #####

m_life <- lm(data = life, life_expect ~ basic_water)
summary(m_life)

ggplot(data = life, aes(x = basic_water, y = life_expect)) + 
  geom_point() +
  labs(x = "Basic water", y = "Life expectancy")

ggplot(data = life, aes(x = basic_water, y = life_expect)) + 
  geom_point() +
  labs(x = "Basic water", y = "Life expectancy") +
  geom_smooth(method = "lm")

##### ANALYSIS OF RESIDUALS #####

life$residuals <- m_life$residuals
summary(life$residuals) 

ggplot(data = life, aes(x = basic_water, y = residuals)) + 
  geom_point() + 
  labs(x = "Basic water", y = "Model residuals") +
  geom_hline(yintercept = 0, color = "red")

ggplot(data = life, aes(x = basic_water, y = residuals)) + 
  labs(x = "Basic water", y = "Model residuals") +
  geom_point() + geom_smooth(color = "red")

ggplot(data = life, aes(x = residuals)) + 
  geom_histogram(fill = "lightblue4", color = "white") +
  labs(x = "Model residuals") + 
  theme_bw()

ggplot(data = life, aes(x = residuals)) + 
  geom_histogram(fill = "lightblue4", color = "white", 
                 binwidth = 1.5) +
  labs(x = "Model residuals") + 
  theme_bw()

##### ANOVA TABLE #####

anova(m_life)

#############################################
######### PART 02:  BACK TO CANADA ##########
#############################################

canada <- read.csv(file.choose())

m_power <- lm(data = canada, current_vote ~ p2p)
summary(m_power)

m_gender <- lm(data = canada, current_vote ~ gender)
summary(m_gender)

