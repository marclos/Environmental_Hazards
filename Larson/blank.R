# blank
California info link: https://iaspub.epa.gov/triexplorer/tri_factsheet.factsheet_forstate?&pstate=CA&pyear=2014&pDataSet=TRIQ1
LA County info: https://ofmpub.epa.gov/triexplorer/tri_factsheet.factsheet?pParent=TRI1&pDataset=TRIQ2&pstate=CA&pcounty=Los%20Angeles&pFips=06037&pyear=2014

> file.choose()
[1] "/home/CAMPUS/nllk2015/Environmental_Hazards/Larson/CONTINENTAL FIBERGLASS INC.csv"
file= "/home/CAMPUS/nllk2015/Environmental_Hazards/Larson/CONTINENTAL FIBERGLASS INC.csv"
import=read.csv(file)
names(import)
plot(Total.on..and.off.site.releases~Year, data=import, ylim=c(0,56000))
abline(h=0, col="green")
str(import)
