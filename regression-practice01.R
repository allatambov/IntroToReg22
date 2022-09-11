##### LOAD AND EXPLORE DATA #####

canada <- read.csv(file.choose(), stringsAsFactors = TRUE)
str(canada)
summary(canada)

##### PART 1: PRELIMINARY ANALYSIS #####

# Step 1: look at the vote share distribution 
# in the current elections

hist(canada$current_vote, 
     col = "deepskyblue4", 
     border = "white",
     main = "", 
     xlab = "Current vote (in %)",
     ylab = "Count",
     xlim = c(0, 100),
     ylim = c(0, 120))

# Step 2: compare two vote share distributions,
# for candidates with proposal power and without

boxplot(canada$current_vote ~ canada$p2p,
        col = c("indianred3", "deepskyblue4"),
        xlab = "No power vs power", 
        ylab = "Vote (in %)")

t.test(canada$current_vote ~ canada$p2p)

# Step 3: do the same, but separately 
# for government and opposition candidates

government <- canada[canada$government == 1, ]
opposition <- canada[canada$government == 0, ]

boxplot(government$current_vote ~ government$p2p,
        col = c("indianred3", "deepskyblue4"),
        xlab = "No power vs power", 
        ylab = "Vote (in %)")

boxplot(opposition$current_vote ~ opposition$p2p,
        col = c("indianred3", "deepskyblue4"),
        xlab = "No power vs power", 
        ylab = "Vote (in %)")

t.test(government$current_vote ~ government$p2p)
t.test(opposition$current_vote ~ opposition$p2p)

# Step 4: create a model that will show 
# how current vote share can be explained 
# by proposal power and government membership

# we have no such knowledge yet :(
# just wait and switch to other question

##### PART 2: EXPLORING RELATIONSHIPS #####

# Statement: the vote share in the current elections 
# is correlated with the vote share in the previous 
# elections

# Step 1: look at the scatterplot

plot(canada$previous_vote, canada$current_vote, 
     pch = 16, col = "navy", 
     xlab = "Vote share (previous elections)",
     ylab = "Vote share (current elections)")

# Step 2: calculate Pearson's correlation coefficient

cor.test(canada$previous_vote, canada$current_vote)

# Step 3: run a linear model 
# Current vote = beta0 + beta1 * Previous vote

lm(data = canada, current_vote ~ previous_vote)

# add this line to the scatterplot

plot(canada$previous_vote, canada$current_vote, 
     pch = 16, col = "navy", 
     xlab = "Vote share (previous elections)",
     ylab = "Vote share (current elections)")

abline(a = 7.5348, b = 0.8319, col = "red")

# explore parts of the model

m1 <- lm(data = canada, current_vote ~ previous_vote)

m1$fitted.values
m1$residuals

m1$residuals ^ 2
sum(m1$residuals ^ 2)






