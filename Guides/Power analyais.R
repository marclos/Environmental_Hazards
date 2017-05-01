# AOV

# Create Data

set.seed(4)
treatA <- rnorm(10,6,2)
treatB <- rnorm(10,8,2)
treatC <- rnorm(10,9,2)

dataset<-data.frame(Treatment=c(rep("A", 10), 
                                rep("B", 10), 
                                rep("C", 10)), 
                    Replicate=c(rep(1:10,3)), 
          Response=c(treatA, treatB, treatC))

boxplot(Response ~ Treatment, data=dataset)

dataset.aov = aov(Response ~ Treatment, data=dataset)

summary(dataset.aov)

par(mfrow=c(2,2))

plot(dataset.aov)

require(multcomp)
                                                                           + rr, lr))
names(dataset)

summary(dataset.aov)

summary(lm(Response ~ Treatment, data=dataset))
anova(lm(Response ~ Treatment, data=dataset))


dataset.glht.tukey <- glht(dataset.aov, linfct = mcp(Treatment = "Tukey"))
summary(dataset.glht.tukey)

par(mfrow=c(2,2))
plot(dataset.glht.tukey)

# Professional Graphics
boxplot(Response ~ Treatment, data=dataset)
boxplot(Response ~ Treatment, data=dataset, las=1, ylab = "Pb (ppm)")
boxplot(Response ~ Treatment, data=dataset, las=1, ylab = "Pb (ppm)", ylim=c(3,13.5))

text(1:2, 11, "a")
text(3, 13, "b")

library(pwr)

k = 3 # number of groups
n = 10 # replicates
power = .8

pwr.anova.test(k=k, n=n, f=null, power=power)

# Cohen suggests that f values of 
# 0.1 = small
# .25 = medium
# .4 = large

pwr.anova.test(k=k, n=n, f=.5, power=NULL)

effectsize = pwr.anova.test(k=k, n=n, f=seq(.1, .8, .1), power=NULL)

par(mfrow=c(1,3))
plot(effectsize$power ~ effectsize$f, ylab="power", xlab="f", main="Power vs. Effect Size", las=1, ty="b")

samplesize = pwr.anova.test(k=k, n=2:50, f=.5 , power=NULL)
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