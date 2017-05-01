Pbsoil <- read.csv("/home/CAMPUS/mawd2015/github/Environmental_Hazards/Student_Folders/Marisa/PBDATA.csv")
str(Pbsoil)

Pbsoil2 <- na.omit(Pbsoil)

Pbsoil2

boxplot(Concentration ~ Location, data=Pbsoil2)

# Let's remove farms from parks and get rid of stanards.
unique(Pbsoil2$Location)
?subset

list = c("Griffith", "Marston", "Cahuilla", "Blaisdell", "Wheeler")

Pbsoil3 <- Pbsoil2[Pbsoil2$Location %in% list, ]
Pbsoil3 <- droplevels(Pbsoil3)

Pbsoil2.aov <- aov(Concentration ~ Location, data=Pbsoil2)

boxplot(Concentration ~ Location, data=Pbsoil2)

summary(Pbsoil2.aov)
