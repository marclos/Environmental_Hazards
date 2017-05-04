file.choose()

PHsoil <- read.csv("/home/CAMPUS/tgpv2015/github/Environmental_Hazards/Student_Folders/Theabib/PHsoil.csv")
str(PHsoil)
PHsoil2 <- na.omit(PHsoil)

str(PHsoil2)
PHsoil2 = droplevels(PHsoil2)
as.numeric(PHsoil2$Result)

PHSoil2.aov <- aov(Result ~ Location, data = PHsoil2)
summary(PHSoil2.aov)
boxplot(Result ~ Location, data=PHsoil2)
