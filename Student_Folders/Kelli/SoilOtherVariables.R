PbSoilOther <- read.csv("/home/CAMPUS/kak22013/Environmental_Hazards/Student_Folders/Kelli/soil analysis .csv")
str(PbSoilOther)
PbSoilOtherEdit <- na.omit(PbSoilOther)
plot(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Blaisdell",], ty='p', ylim = c(0,80), xlim = c(6.0, 8), pch=20, col = "red", xlab="pH", ylab="Pb Concentration (ppm)", main = "Concentration of Pb vs. pH", las = 1)
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Cahullia Park",], ty='p', pch=20, col = "blue")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Griffith Park",], ty='p', pch=20, col = "green4")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Higginbotham Park",], ty='p', pch=20, col = "orange")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Jaeger Park",], ty='p', pch=20, col = "purple")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="June Vail Park",], ty='p', pch=20, col = "magenta")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="La Puerta Sports Park",], ty='p', pch=20, col = "gray54")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Larkin Park",], ty='p', pch=20, col = "sky blue")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Marston",], ty='p', pch=20, col = "saddlebrown")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Rosa Torrez",], ty='p', pch=20, col = "turquoise")
points(LeadConc~pH, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Wheeler",], ty='p', pch=20, col = "yellow3")


abline(coef(pHLead.lm), )

legend(7.55, 82, c("Blaisdell", "Cahuilla", "Griffith", "Higginbotham", "Jaeger", "June Vail", "La Puerta", "Larkin", "Marston", "Rosa Torrez", "Wheeler"), col = c("blue", "red", "green4", "orange", "purple", "magenta", "gray54", "sky blue", "saddlebrown", "turquoise", "yellow3"),
       text.col = "black", pch = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), cex = .7,
       bg = "gray90")

pHLead.lm <- lm(LeadConc ~ pH, data = PbSoilOtherEdit)
summary(pHLead.lm)


ls()
head(PbSoilOtherEdit)

PbSoilOther <- read.csv("/home/CAMPUS/kak22013/Environmental_Hazards/Student_Folders/Kelli/soil analysis .csv")
str(PbSoilOther)
PbSoilOtherEdit <- na.omit(PbSoilOther)
plot(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Blaisdell",], ty='p', ylim = c(0,80), xlim = c(0, 600), pch=20, col = "red", xlab="Conductivity (micrograms/cm)", ylab="Pb Concentration (ppm)", main = "Concentration of Pb vs. Conductivity", las = 1)
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Cahullia Park",], ty='p', pch=20, col = "blue")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Griffith Park",], ty='p', pch=20, col = "green4")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Higginbotham Park",], ty='p', pch=20, col = "orange")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Jaeger Park",], ty='p', pch=20, col = "purple")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="June Vail Park",], ty='p', pch=20, col = "magenta")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="La Puerta Sports Park",], ty='p', pch=20, col = "gray54")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Larkin Park",], ty='p', pch=20, col = "sky blue")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Marston",], ty='p', pch=20, col = "saddlebrown")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Rosa Torrez",], ty='p', pch=20, col = "turquoise")
points(LeadConc~Conductivity, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Wheeler",], ty='p', pch=20, col = "yellow3")

ConductivityLead.lm <- lm(LeadConc ~ Conductivity, data = PbSoilOtherEdit)
summary(ConductivityLead.lm)
abline(coef(ConductivityLead.lm), )

legend(450, 82, c("Blaisdell", "Cahuilla", "Griffith", "Higginbotham", "Jaeger", "June Vail", "La Puerta", "Larkin", "Marston", "Rosa Torrez", "Wheeler"), col = c("blue", "red", "green4", "orange", "purple", "magenta", "gray54", "sky blue", "saddlebrown", "turquoise", "yellow3"),
       text.col = "black", pch = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), cex = .7,
       bg = "gray90")

ConductivityLead.lm <- lm(LeadConc ~ Conductivity, data = PbSoilOtherEdit)
summary(ConductivityLead.lm)

PbSoilOther <- read.csv("/home/CAMPUS/kak22013/Environmental_Hazards/Student_Folders/Kelli/soil analysis .csv")
str(PbSoilOther)
PbSoilOtherEdit <- na.omit(PbSoilOther)
plot(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Blaisdell",], ty='p', ylim = c(0,80), xlim = c(0, 3), pch=20, col = "red", xlab="Nitrate Availability (ppm)", ylab="Pb Concentration (ppm)", main = "Concentration of Pb vs. Nitrate Availability", las = 1)
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Cahullia Park",], ty='p', pch=20, col = "blue")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Griffith Park",], ty='p', pch=20, col = "green4")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Higginbotham Park",], ty='p', pch=20, col = "orange")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Jaeger Park",], ty='p', pch=20, col = "purple")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="June Vail Park",], ty='p', pch=20, col = "magenta")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="La Puerta Sports Park",], ty='p', pch=20, col = "gray54")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Larkin Park",], ty='p', pch=20, col = "sky blue")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Marston",], ty='p', pch=20, col = "saddlebrown")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Rosa Torrez",], ty='p', pch=20, col = "turquoise")
points(LeadConc~Nitrate, data=PbSoilOtherEdit[PbSoilOtherEdit$Park=="Wheeler",], ty='p', pch=20, col = "yellow3")

NitrateLead.lm <- lm(LeadConc ~ Nitrate, data = PbSoilOtherEdit)
summary(NitrateLead.lm)
abline(coef(NitrateLead.lm), )

legend(2.5, 82, c("Blaisdell", "Cahuilla", "Griffith", "Higginbotham", "Jaeger", "June Vail", "La Puerta", "Larkin", "Marston", "Rosa Torrez", "Wheeler"), col = c("blue", "red", "green4", "orange", "purple", "magenta", "gray54", "sky blue", "saddlebrown", "turquoise", "yellow3"),
       text.col = "black", pch = c(20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20), cex = .7,
       bg = "gray90")

NitrateLead.lm <- lm(LeadConc ~ Nitrate, data = PbSoilOtherEdit)
summary(NitrateLead.lm)
