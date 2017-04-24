Pbsoil <- read.csv("/home/CAMPUS/mwl04747/github/Environmental_Hazards/Student_Folders/Theabib/Pbsoil.csv")
str(Pbsoil)

Pbsoil2 <- na.omit(Pbsoil)

Pbsoil2

Pbsoil2.aov <- aov(Result ~ Location, data=Pbsoil2)

summary(Pbsoil2.aov)
