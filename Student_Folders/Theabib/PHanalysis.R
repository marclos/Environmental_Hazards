file.choose()

PHsoil <- read.csv("/home/CAMPUS/tgpv2015/github/Environmental_Hazards/Student_Folders/Theabib/PHsoil.csv")
str(PHsoil)
PHsoil2 <- na.omit(PHsoil)
PHSoil2.aov <- aov(Result ~ Location, data = PHsoil2)
str(PHsoil2)
as.numeric(PHsoil2$Result)

boxplot(Result ~ Location, data=PHsoil2)
