file.choose()
file="/home/CAMPUS/oih01925/hazards/Howie/AIR LIQUIDE LARGE INDUSTRIES US LP - EL SEGUNDO.csv"


import=read.csv(file)
head(import)
names (import)
#this makes plot 
plot(Fugitive.Air~Year, data=import)

unique(import$Chemical)
plot(Fugitive.Air~Year, data=import [import$Chemical=="METHANOL",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="COPPER COMPOUNDS",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="CHROMIUM COMPOUNDS",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="NICKEL COMPOUNDS",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="ZINC COMPOUNDS",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="AMMONIA",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="ETHYLENE",])
plot(Fugitive.Air~Year, data=import [import$Chemical=="PROPYLENE",])

