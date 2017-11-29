
file = "/home/CAMPUS/mwl04747/github/Environmental_Hazards/Data/Pb_Data/171116_EA30_MLH4b.csv"

import = read.csv(file)

head(import)

Pb_data = import[import$Analyte=="Pb",]

head(Pb_data)

Pb_data$Soil_Pb = 25/10*Pb_data$Concentration
drop(Pb_data$Concentration)
drops <- c("Concentration")
Pb_data = Pb_data[ , !(names(Pb_data) %in% drops)]

library(tidyr)

Pb = Pb_data %>% spread(Mass, Soil_Pb)
Pb$Pb67 = round(Pb$'206'/Pb$'207',3)
Pb$Pb68 = round(Pb$'206'/Pb$'208',3)
Pb$Total = Pb$'206'+ Pb$'207'+ Pb$'208'
Pb

exceed = sum(Pb$Pb67 > 1.14); exceed
prop.test(exceed, length(Pb$Pb67))

Pb.aov = aov(Total ~ ParkID, data=Pb)

boxplot(Total ~ ParkID, data=Pb)

summary(Pb.aov)
 
boxplot(Pb67 ~ ParkID, data=Pb)

