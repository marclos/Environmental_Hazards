file.choose()

SalSoil <- read.csv("/home/CAMPUS/tgpv2015/github/Environmental_Hazards/Student_Folders/Theabib/SalinitySoil.csv")
str(SalSoil)
SalSoil2 <- na.omit(SalSoil)

str(SalSoil2)
SalSoil2 = droplevels(SalSoil2)
as.numeric(SalSoil2$Result)

SalSoil2.aov <- aov(Result ~ Location, data = SalSoil2)
summary(SalSoil2.aov)

boxplot(Result ~ Location, data=SalSoil2)
