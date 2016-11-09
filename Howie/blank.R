file.choose()
file="/home/CAMPUS/oih01925/hazards/Howie/AIR LIQUIDE LARGE INDUSTRIES US LP - EL SEGUNDO.csv"


import=read.csv(file)
head(import)
names (import)
plot(Fugitive.Air~Year, data=import)

