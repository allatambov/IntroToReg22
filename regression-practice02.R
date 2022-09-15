##### LOAD DATA #####

canada <- read.csv(file.choose())

##### PART 1: REGRESSION MODEL #####

m1 <- lm(data = canada, current_vote ~ previous_vote)
summary(m1)

##### PART 2: ANALYSIS OF RESIDUALS #####

plot(canada$previous_vote, canada$current_vote, 
     pch = 16,
     xlab = "Vote share (previous elections)",
     ylab = "Vote share (current elections)")

abline(a = 7.5348, b = 0.8319, col = "red")

canada$residuals <- m1$residuals

summary(canada$residuals)
hist(canada$residuals, col = "tomato")

plot(canada$previous_vote, canada$residuals, pch = 16)
abline(h = 0, col = "red")

t.test(canada$residuals, mu = 0)




