Pbsoil <- read.csv("/home/CAMPUS/mwl04747/github/Environmental_Hazards/Student_Folders/Theabib/Pbsoil.csv")
str(Pbsoil)

Pbsoil2 <- na.omit(Pbsoil)

Pbsoil2

boxplot(Result ~ Location, data=Pbsoil2)

# Let's remove farms from parks and get rid of stanards.
unique(Pbsoil2$Location)
?subset

list = c("Griffith", "Marston", "Cahuilla", "Blaisdell", "Wheeler")

Pbsoil3 <- Pbsoil2[Pbsoil2$Location %in% list, ]
Pbsoil3 <- droplevels(Pbsoil3)

Pbsoil3.aov <- aov(Result ~ Location, data=Pbsoil3)

boxplot(Result ~ Location, data=Pbsoil3)

summary(Pbsoil3.aov)
