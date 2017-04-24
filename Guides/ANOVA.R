# ANOVA Chunks
par(mfrow=c(1,1))

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

treat.mean <- tapply(dataset$Response,dataset$Treatment, mean)

dataset$treat.mean[dataset$Treatment=="A"] <- treat.mean["A"]
dataset$treat.mean[dataset$Treatment=="B"] <- treat.mean["B"]
dataset$treat.mean[dataset$Treatment=="C"] <- treat.mean["C"]

dataset$dev.within <- dataset$Response - dataset$treat.mean

SS_within = sum((dataset$dev.within)^2)

dataset$dev.among <- dataset$treat.mean-dataset$mu

SS_among = sum((dataset$dev.among)^2)

dataset$sum<-dataset$mu+dataset$dev.among+dataset$dev.within
set.seed(123)
subset<- sort(sample(1:30, 6))
dataset[subset,c(1,3, 5:8)]

dataset$dev.thirdterm <- dataset$dev.within * dataset$dev.among
2*sum(round(dataset$dev.thirdterm,1))

str(dataset)

cbind(SS_among, SS_within, SS_total)

(dataset$mu = mean(dataset$Response)) #Grand mean=8.64

dataset$dev.within.squared <- dataset$dev.within^2
dataset$dev.among.squared = dataset$dev.among^2

SSD.among <- sum(dataset$dev.among.squared)
SSD.wthn <- sum(dataset$dev.within.squared)

MSD.among <- SSD.among/(3-1)
MSD.wthn <- SSD.wthn/(30-3)

MSD.among
MSD.wthn

MSD.among/MSD.wthn

library(sfsmisc)
par(las=1)
F <- seq(0, 10, .01)
plot(F, df(F, 1, 40), type="l", ylab="f", lwd=2, ylim=c(0,0.9))
lines(F, df(F, 5, 25), col="brown", lwd=2)
lines(F, df(F, 20, 10), col="orange", lwd=2)
F1=0.22; 
p.arrows(F1+ 0.5, df(F1, 1, 40)+ 0.1, F1+.02, df(F1, 1, 40),  size = .4, fill = 1)
text(F1+.8,df(F1, 1, 40)+.1, "F[1,40]", pos=3)
F2=1
p.arrows(F2+ 0.5, df(F2, 5, 20)+ 0.1, F2+.02, df(F2, 5, 20),  size = .4, fill = "brown", col="orange")
text(F2+.8, df(F2, 5, 20)+.1, "F[5,25]", pos=3, col="brown")
F3=1.3
p.arrows(F3+ 0.5, df(F3, 20, 10)+ 0.1, F3+.02, df(F3, 20, 10),  size = .4, fill = "orange", col="orange")
text(F3+.8, df(F3, 20, 10)+.1, "F[20,10]", pos=3, col="orange")

pf(MSD.among/MSD.wthn,1,27, lower.tail=F)

summary(aov(Response ~ Treatment, data=dataset))
