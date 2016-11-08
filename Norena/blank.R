
https://iaspub.epa.gov/triexplorer/tri_getcounties.getcounties?report=tri_release.chemical&scriptname=chemical&state=ZIP&c_year=2015&c_industry=ALL&c_chemical=_ALL_&c_chemlist=&c_coreyear=&c_indlist=&c_usrState=&c_fips=00000&c_tabrpt=1&c_zip=&c_chk0=true&c_chk1=false&c_chk2=false&c_chk3=true&c_chk4=false&c_chk5=false&c_chk6=&c_chk7=&c_chk8=&c_chk9=&c_chk10=
  https://iaspub.epa.gov/triexplorer/tri_factsheet_search.searchfactsheet
https://ejscreen.epa.gov/mapper/
  file="/home/CAMPUS/wjn02014/Environmental Hazards/Norena/BARRY AVENUE PLATING CO.csv"
import=read.csv(file)

plot(x=year, y=total.air)

plot(x=import$Year, y=import$Total.Air)

plot(x=import$Year, y=import$Total.production.related.waste.managed)

plot(x=import$Year, y=import$Total.transfers.off.site.for.waste.management)

plot(Total.transfers.off.site.for.waste.management~Year,data=import[import$Chemical=="NITRIC ACID",])

file="/home/CAMPUS/wjn02014/Environmental Hazards/Norena/BARRY AVENUE PLATING CO.csv"
> import=read.csv(file)
> names(import)
View(import)
str(import)
import=read.csv(file)

import=read.csv(file)
