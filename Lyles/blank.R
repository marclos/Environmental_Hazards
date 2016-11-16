# blank> 
file.choose("/home/CAMPUS/fcl02013/Environmental_Hazards/Lyles/CPPC2.csv")
 file="/home/CAMPUS/fcl02013/Environmental_Hazards/Lyles/CPPC2.csv"
 import <- read.csv(file)
 str(import)
 head(import)
 names(import)
 plot(Fugitive.Air  ~ Year, data=import)
 unique(import$Chemical)
 trimethyl <- subset(import, Chemical=="1,2,4-TRIMETHYLBENZENE")
 plot(Fugitive.Air  ~ Year, data=trimethyl, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014))
 
phenol <- subset(import, Chemical=="PHENOL")
plot(Fugitive.Air  ~ Year, data=phenol, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014))

chemicals <- unique(import$Chemical)

for (i in 1:length(chemicals)){
  temp <- subset(import, Chemical==import$Chemical[i])
  
  plot(Fugitive.Air  ~ Year, data=temp, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014), main=paste(import$Chemical[i]))
}
library(UScensus2010)
library(UScensus2010tract)
