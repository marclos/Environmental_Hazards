file to help find stuff on Toxic Release Inventory Program

https://www.epa.gov/sites/production/files/2015-06/documents/factors_to_consider_6.15.15_final.pdf
file="/home/CAMPUS/smjx2015/Environmental_Hazards/Jannsen/TESORO LOS ANGELES REFINERY-CARSON OPERATIONS.csv"
Civilian Labor Force 2013: 244,912;

Unemployed: 11.5%;

Per capita personal income 2013: $25,933

import=read.csv(file)
plot(Total.on..and.off.site.releases~Year, data=import)
str(import)
plot(Total.on..and.off.site.releases~Year, data=import[import$Chemical=="LEAD",])
plot(Total.on..and.off.site.releases~Year, data=import[import$Chemical=="MERCURY",])
plot(Total.on..and.off.site.releases~Year, data=import[import$Chemical=="CHROMIUM",])                                                  
plot(Total.on..and.off.site.releases~Year, data=import[import$Chemical=="BENZENE",])
