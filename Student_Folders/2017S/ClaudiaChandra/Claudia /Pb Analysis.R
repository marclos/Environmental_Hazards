file.choose()
file="/home/CAMPUS/cmcb2016/Environmental_Hazards/ClaudiaChandra/Environmental data.csv"
read.csv(file)

data=read.csv(file)

head(data)

boxplot(Concentration ~ Location, data=data)

data2=na.omit(data)
data2=droplevels(data2)


boxplot(Concentration ~ Location, data=data2)

aov(Concentration ~ Location, data=data2)

data2.aov=aov(Concentration ~ Location, data=data2)

summary(data2.aov)

plot(data2.aov)

list=unique(data2$Location) 
Parks= as.vector (list [c(1, 4, 5, 6, 10)])
Parks

data2[data2$Location %in% Parks,]

data3=data2[data2$Location %in% Parks,]

data3= droplevels(data3)

data3 

aov(Concentration ~ Location, data=data3)

data3.aov=aov(Concentration ~ Location, data=data3)

summary(data3.aov)

NOT (insignificant) SIGNIFICANT - No difference between the parks. cannot reject the null hypothesis 

plot(data3.aov)

Cant reject null hypothesis 

boxplot(Concentration ~ Location, data=data3)


One of the samples broke, this could be an outlier? 
Mystery sample? we omitted this but what is it 

TukeyHSD(data3.aov, conf.level = .95)

none of the parks are different from the other 
* parts per million (y axis)
parks - x axis 


Class notes 1st may 2017: 
  - 30 total observations (6 parks x 5 samples)w
  
 
FINDING MEAN + GRAPHING 

means<- round(tapply(data3$Concentration, data3$Location, mean), digits=2)  # note that I I round values to just 2 decimal places

means

> library(gplots)  #I load the "gplots" package to plot means

plot(data3$Concentration~data3$Location, digits=2, col= "red", mean.labels=T, main= "Average PB level")


