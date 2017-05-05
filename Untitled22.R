# Two treatment dataset
set.seed(4)
treatA <- rnorm(10, 6, 2) # creates 10 random numbers, mean= 6
treatB <- rnorm(10, 8, 2)
treatC <- rnorm(10, 9, 2)

# creates data frame
dataset <- data.frame(Treatment = c(rep("A", 10), rep("B", 10), rep("C", 10)), Replicate=c(rep(1:10,3)), Response=c(treatA, treatB, treatC))

args(tapply)

treat.mean <- tapply(dataset$Response, dataset$Treatment, mean)

dataset$treat.mean[dataset$Treatment == "A"] <- treat.mean["A"]
dataset$treat.mean[dataset$Treatment == "B"] <- treat.mean["B"]
dataset$treat.mean[dataset$Treatment == "C"] <- treat.mean["C"]

dataset$dev.within <- dataset$Response - dataset$treat.mean

SS_within = sum((dataset$dev.within)^2)

dataset.aov <- aov(Response ~ Treatment, dataset)

summary(dataset.aov)