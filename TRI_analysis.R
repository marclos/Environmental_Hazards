# Import TRI Data

lacounty = "/home/CAMPUS/mwl04747/github/Environmental_Hazards/Data/LA_county_2015_chem_release2.csv"

import=read.csv(lacounty, header=F); names(import)
names(import)=c("Row #", "Chemical", "On-Site", "Off-Site", "Total")

head(import)

