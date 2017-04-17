# Import TRI Data

# all chemicals from year 2014 (reported as of March 2016?)
lacounty = "/home/CAMPUS/mwl04747/github/Environmental_Hazards/Data/LA_county_2014_chem_release2.csv"

import=read.csv(lacounty, header=F); names(import)
names(import)=c("Row #", "Chemical", "On-Site", "Off-Site", "Total")

head(import)

lacounty_fac = "/home/CAMPUS/mwl04747/github/Environmental_Hazards/Data/LA_fac_release_2014_2.csv"

la_fac <- read.csv(lacounty_fac); names(la_fac)

# this is a ridiculous format!  How do I get the chemicals and facilities disaggregated!
library(dplyr)
la_fac$Chemical <- NULL; str(la_fac)
# la_fac$Chemical[is.na(la_fac$Row)] <- la_fac$Facility[is.na(la_fac$Row)]; head(la_fac)

Chemicals <- as.vector(la_fac$Facility[is.na(la_fac$Row)]); Chemicals
Facilities <- as.vector(la_fac$Facility[!is.na(la_fac$Row)]); Facilities



# Create a Map!
plot(la_fac$Longitude, la_fac$Latitude, las=1)



