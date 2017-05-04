#file.choose("PbSoilSingh.csv")

read.csv("/home/CAMPUS/vpsc2015/Environmental_Hazards/Student_Folders/VirajEthyl/PbSoilSingh.csv")
import <- read.csv("/home/CAMPUS/vpsc2015/Environmental_Hazards/Student_Folders/VirajEthyl/PbSoilSingh.csv")

importNA <- na.omit(import)
str(import)
head(import)

importNA.aov <- aov( Pb ~ Park, importNA)
summary(importNA.aov)


boxplot(Pb ~ Park, importNA)
par(mfrow=c(1,1))
plot(importNA.aov)

posthoc <- TukeyHSD(importNA.aov, conf.level=.95)

posthoc 

#location mean
Location.mean <- tapply(importNA$Pb, importNA$Park, mean)

#Location sdev
Location.sdev <- tapply(importNA$Pb, importNA$Park, sd)

# lm(y~x1 +x2)
#x1 is distance
#x2 is pH



