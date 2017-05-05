
file = "/home/CAMPUS/mvxu2015/Environmental_Hazards/Student_Folders/Mireya/MVdata3.csv"

import = read.csv(file)

str(import)

head(import)

# analysis of variance- distance 10
dataset.aov <- aov(Concentration ~ Distance10, import)

summary(dataset.aov)

plot(Concentration ~Distance10, data=import) # plots dep ~ independent variables

plot(dataset.aov)

abline(coef(lm(Concentration ~Distance10, data=import)))

boxplot(Concentration ~ Distance10, data=import) # plots dep ~ inde, box and whisker

# analysis of variance.
dataset.aov = aov(Concentration ~ Distance10, data=import)

summary(dataset.aov)

par(mfrow=c(2,2))

plot(dataset.aov)


summary(dataset.aov)

summary(lm(Concentration ~ Distance10, data=importt))
anova(lm(Concentration ~ Distance10, data=import))

dataset.glht.tukey <- glht(dataset.aov, linfct = mcp(Distance10 = "Tukey"))
summary(dataset.glht.tukey)

par(mfrow=c(2,2))
plot(dataset.glht.tukey)

# Professional Graphics
boxplot(Concentration ~ Distance10, data=import)
boxplot(Concentration ~ Distance10, data=import, ty=p, las=1, ylab = "P (ppm)", pch=20)
boxplot(Concentration ~ Distance10, data=import, ty=p, las=1, ylab = "Lead Concentration (ppm)", ylim=c(0,70), pch=20, xlab="Distance from I-10 (m)")

# the ones in the middle are being hit the hardest



# DISTANCE FROM 210 
dataset.aov2 <- aov(Concentration ~ Distance210, import)

summary(dataset.aov2)
# really high p-value

plot(Concentration ~ Distance210, data=import) # plots dep ~ independent variables

plot(dataset.aov2)

abline(coef(lm(Concentration ~ Distance210, data=import)))

boxplot(Concentration ~ Distance210, data=import) # plots dep ~ inde, box and whisker
boxplot(Concentration ~ Distance210, data=import, ty=p, las=1, ylab = "Lead Concentration (ppm)", ylim=c(0,70), pch=20, xlab="Distance from I-210 (m)")

# again, ones in the middle are being hit consistenly summary(lm(Concentration ~ Distance210, data=import))
anova(lm(Concentration ~ Distance210, data=import))

summary (dataset.aov2)

dataset.glht.tukey2 <- glht(dataset.aov2, linfct = mcp(Distance210 = "Tukey"))
summary(dataset.glht.tukey2)

par(mfrow=c(2,2))
plot(dataset.glht.tukey2)

# Professional Graphics
boxplot(Concentration ~ Distance10, data=import)
boxplot(Concentration ~ Distance10, data=import, ty=p, las=1, ylab = "P (ppm)", pch=20)
boxplot(Concentration ~ Distance10, data=import, ty=p, las=1, ylab = "Lead Concentration (ppm)", ylim=c(0,70), pch=20, xlab="Distance from I-210 (m)")
library(pwr)

k = 3 # number of groups
n = 10 # replicates
power = .8

pwr.anova.test(k=k, n=n, f=NULL, power=power)

# Cohen suggests that f values of 
# 0.1 = small
# .25 = medium
# .4 = large

pwr.anova.test(k=k, n=n, f=.5, power=NULL)

effectsize = pwr.anova.test(k=k, n=n, 
            f=seq(.1, .8, .1), power=NULL)

par(mfrow=c(1,3))
plot(effectsize$power ~ effectsize$f, ylab="power", xlab="f", main="Power vs. Effect Size", las=1, ty="b")

samplesize = pwr.anova.test(k=k, n=2:50, f=.5 , 
                            power=NULL)
plot(samplesize$power ~ samplesize$n, ylab="power", xlab="n", main="Power vs. Sample Size", las=1, ty="b", )


samplesize2 = pwr.anova.test(k=k, n=2:1000, f=.1 , power=NULL)
plot(samplesize2$power ~ samplesize2$n, ylab="power", xlab="n", main="Power vs. Sample Size", las=1, ty="b")



# Plot sample size curves for detecting correlations of
# various sizes.


# range of correlations
r <- seq(.1,.5,.01)
nr <- length(r)

# power values
p <- seq(.4,.9,.1)
np <- length(p)

# obtain sample sizes
samsize <- array(numeric(nr*np), dim=c(nr,np))
for (i in 1:np){
  for (j in 1:nr){
    result <- pwr.r.test(n = NULL, r = r[j],
                         sig.level = .05, power = p[i],
                         alternative = "two.sided")
    samsize[j,i] <- ceiling(result$n)
  }
}

# set up graph
xrange <- range(r)
yrange <- round(range(samsize))
colors <- rainbow(length(p))
plot(xrange, yrange, type="n",
     xlab="Correlation Coefficient (r)",
     ylab="Sample Size (n)" )

# add power curves
for (i in 1:np){
  lines(r, samsize[,i], type="l", lwd=2, col=colors[i])
}

# add annotation (grid lines, title, legend) 
abline(v=0, h=seq(0,yrange[2],50), lty=2, col="grey89")
abline(h=0, v=seq(xrange[1],xrange[2],.02), lty=2,
       col="grey89")
title("Sample Size Estimation for Correlation Studies\n
  Sig=0.05 (Two-tailed)")
legend("topright", title="Power", as.character(p),
       fill=colors, cex=2)