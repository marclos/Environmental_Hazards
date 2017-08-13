PbSoil <- read.csv("/home/CAMPUS/kak22013/Environmental_Hazards/Student_Folders/Kelli/NewEA_PbSoil.csv")
str(PbSoil)
PbSoilEdit <- na.omit(PbSoil)
PbSoilEdit.aov <- aov(Conc..Calib. ~ Location, PbSoilEdit)
summary(PbSoilEdit.aov)

boxplot(Conc..Calib. ~ Location, data=PbSoilEdit, las = 1, ylab= "Pb Concentration (ppm)", xlab = "Park Name", cex.axis=.7, yaxt="n")
axis(2,cex.axis=1, las =1)


