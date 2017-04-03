
file.choose()
file = "/home/CAMPUS/vesj2015/Environmental_Hazards/Sanchez-Jimenez/1TESORO LOS ANGELES REFINERY-CARSON OPERATIONS.csv"
import <- read.csv(file)
str(import)

names(import)

unique(import$Chemical)


Toluene <- subset(import, Chemical=="ETHYLENE")


plot(Fugitive.Air  ~ Year, data=Toluene, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014))

plot(Stack.Air  ~ Year, data=Toluene, las=1, pch=19, ylab="Stack Air Emissions (lbs)", xlim=c(1985, 2014))

plot(Total.Air  ~ Year, data=Toluene, las=1, pch=19, ylab="Total Air Emissions (lbs)", xlim=c(1985, 2014))

plot(Surface.Water.Discharge ~ Year, data=Toluene, las=1, pch=19, ylab="Surface Water Discharge (lbs)", xlim=c(1985, 2014))

plot(Underground.Injection ~ Year, data=Toluene, las=1, pch=19, ylab="Underground Water Injection (lbs)", xlim=c(1985, 2014))

plot(Land.Disposal ~ Year, data=Toluene, las=1, pch=19, ylab="Land Disposal (lbs)", xlim=c(1985, 2014))

plot(Total.on.site.release ~ Year, data=Toluene, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014))
plot(Off.site.release ~ Year, data=Toluene, las=1, pch=19, ylab="Fugitive Air Emissions (lbs)", xlim=c(1985, 2014))

<<<<<<< HEAD
#last one has problems, but no need?
=======
#
>>>>>>> cce061252130c2283a21a6390d80f54bd5f63f79
