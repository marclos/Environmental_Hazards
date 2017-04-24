# ANOVA Chunks

ctl <- c(4.17,5.58,5.18,6.11,4.50,4.61,5.17,4.53,5.33,5.14)
low <- c(5.81,4.17,6.41,3.59,5.87,3.83,6.03,4.89,4.32,4.69)
medium <- c(4.41,4.17,4.61,3.59,5.81,6.83,6.03,1.89,3.32,4.69)
high <- c(1.81,2.17,3.41,3.59,3.87,6.83,3.03,3.89,2.32,2.69)

group <- gl(4,10,40, labels=c("Control","Low", "Medium", "High"))
weight <- c(ctl, low, medium, high)
PlantExperiment <- data.frame(Treatment=group, SeedWeight=weight)
summary(PlantExperiment)

boxplot(SeedWeight~Treatment, data=PlantExperiment)


plantexperiment.aov <- aov(SeedWeight~Treatment, data=PlantExperiment)

summary(plantexperiment.aov)

# Two treatment dataset
set.seed(4)
treatA <- rnorm(10,6,2)
treatB <- rnorm(10,8,2)
treatC <- rnorm(10,9,2)


dataset<-data.frame(Treatment=c(rep("A", 10), rep("B", 10), rep("C", 10)), Replicate=c(rep(1:10,3)), Response=c(treatA, treatB, treatC))

dataset$mu = mean(dataset$Response); mean(dataset$Response) #Grand mean=8.64
SS_total = sum((dataset$Response - dataset$mu)^2); SS_total
