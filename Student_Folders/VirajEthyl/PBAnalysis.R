file.choose("PBSoil.Singh.csv")

read.csv("/home/CAMPUS/vpsc2015/Environmental_Hazards/Student_Folders/VirajEthyl/PBSoil.Singh.csv")
import <- read.csv("/home/CAMPUS/vpsc2015/Environmental_Hazards/Student_Folders/VirajEthyl/PBSoil.Singh.csv")

importNA <- na.omit(import)
str(import)
head(import)

importNA.aov <- aov( Result ~ Location, importNA)
summary(importNA.aov)


boxplot(Result~Location,importNA)
par(mfrow=c(1,1))
plot(importNA.aov)

posthoc <- TukeyHSD(importNA.aov, conf.level=.95)

posthoc 

#location mean
Location.mean <- tapply(importNA$Result, importNA$Location, mean)

#Location sdev
Location.sdev <- tapply(importNA$Result, importNA$Location, sd)

# lm(y~x1 +x2)
x1 is distance
x2 is pH



