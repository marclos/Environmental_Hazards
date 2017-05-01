PbSoil <- read.csv("/home/CAMPUS/kak22013/Environmental_Hazards/Student_Folders/Kelli/NewEA_PbSoil.csv")
str(PbSoil)
PbSoilEdit <- na.omit(PbSoil)
PbSoilEdit.aov <- aov(Conc..Calib. ~ Location, PbSoilEdit)
summary(PbSoilEdit.aov)


