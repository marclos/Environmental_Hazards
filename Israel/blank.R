# blank

Interactive GIS Map:
https://gispub.epa.gov/trina2014/index.html

San Bernardino County:
  101 facilities
  1.73 mil pounds released from all facilities
  86.26 lb released per sq mile
  
Los Angeles County:
  387 facilities
  6.78 mil pounds released from all facilities
  1,653.97 lb released per sq mile
  Ranked 466 out of 2,335
  
TRI Explorer:
  https://iaspub.epa.gov/triexplorer/tri_release.chemical
TRI On-site and Off-site Reported Disposed of or Otherwise Released (in pounds), for " All industries," for "<a href=https://iaspub.epa.gov/triexplorer/tri_text.list_chemical_pbt>Persistent Bioaccumulative, and Toxic (PBT) Chemicals, "EPA Region 9, "2015					
Row #	Chemical	Total On-site	Total Off-site	Total On- and 	
Disposal or	Disposal or	Off-site	
Other Releases	Other Releases	Disposal or	
Other Releases	
1	BENZO(G,H,I)PERYLENE	542.8350882	676.686372	1,219.52	
2	CHLORDANE	208.8407	0	208.8407	
3	DIOXIN AND DIOXIN-LIKE COMPOUNDS	0.1627846	0.2548284	0.417613	
4	HEPTACHLOR	17.27	0	17.27	
5	HEXACHLOROBENZENE	0	.	0	
6	LEAD	1,473,193.08	78,437.77	1,551,630.85	
7	LEAD COMPOUNDS	95,662,987.80	531,229.69	96,194,217.49	
8	MERCURY	36,962.39	1,529.47	38,491.86	
9	MERCURY COMPOUNDS	3,165,832.03	376,348.74	3,542,180.77	
10	PENDIMETHALIN	0.46	.	0.46	
11	POLYCHLORINATED BIPHENYLS	240,054.31	445,671.98	685,726.29	
12	POLYCYCLIC AROMATIC COMPOUNDS	7,821.00	7,882.09	15,703.09	
13	TETRABROMOBISPHENOL A	906.81	274	1,180.81	
14	TOXAPHENE	129.54	.	129.54	
Total	100,588,656.54	1,442,050.68	102,030,707.21	
TRI On-site and Off-site Reported Disposed of or Otherwise Released (in grams), for " All industries," for " Dioxin and Dioxin-like compounds, "EPA Region 9, "2015					
Row #	Chemical	Total On-site	Total Off-site	Total On- and 	
		Disposal or	Disposal or	Off-site	
		Other Releases	Other Releases	Disposal or	
				Other Releases	
1	DIOXIN AND DIOXIN-LIKE COMPOUNDS	73.8252208	115.5684166	189.3936374	 
Reporting year (RY) 2015 is the most recent TRI data available. Facilities reporting to TRI were required to submit their data to EPA by July 1 for the previous calendar year's activities.. TRI Explorer is using a preliminary data set that is still under Quality Assurance review. This dataset includes revisions processed by EPA as of October 14, 2016 for the years 1988 to 2015. Revisions submitted to EPA after this time are not reflected in TRI Explorer reports.					
Users of TRI information should be aware that TRI data reflect releases and other waste management activities of chemicals, not whether (or to what degree) the public has been exposed to those chemicals. Release estimates alone are not sufficient to determine exposure or to calculate potential adverse effects on human health and the environment. TRI data, in conjunction with other information, can be used as a starting point in evaluating exposures that may result from releases and other waste management activities which involve toxic chemicals. The determination of potential risk depends upon many factors, including the toxicity of the chemical, the fate of the chemical, and the amount and duration of human or other exposure to the chemical after it is released.					
Off-site disposal or other releases show only net off-site disposal or other releases, that is, off-site disposal or other releases transferred to other TRI facilities reporting such transfers as on-site disposal or other releases are not included to avoid double counting.					
For purposes of analysis, data reported as Range Code A is calculated using a value of 5 pounds, Range Code B is calculated using a value of 250 pounds and Range Code C is calculated using a value of 750 pounds.					
"A decimal point, or . denotes the following: 
if a decimal point is reported across an entire row, the facility submitted a Form A (i.e., the facility certified that its total annual reportable amount is less than 500 pounds, and does not manufacture, process, or otherwise use more than 1 million pounds); or 
if a decimal point is reported in a single column, the facility left that particular cell blank in its Form R submission (a zero in a cell denotes either that the facility reported 0 or NA in its Form R submission)."					
<u>How to cite TRI Explorer.</u>    Following APA Style, 6th edition, an appropriate citation to TRI Explorer is:<br/>United States Environmental Protection Agency. (2016). <i>TRI Explorer</i> (2015 National Analysis dataset (released October 2016)) [Internet database]. Retrieved from <a href=https://www.epa.gov/triexplorer>https://www.epa.gov/triexplorer</a>, (November 02, 2016).					

Toluene
Methanol
Methyl Tert-Butyl-Ether
Xylene (Mixed Isomers)
(N-Hexane)

################################################################
-----DSFSAFSADFASDF---------------------------
##############################################################

file.choose()

file="/home/CAMPUS/lmh12014/github/Environmental_Hazards/Israel/TESORO MARINE TERMINAL 2.csv"

read.csv(file)

import=read.csv(file)

names(import)

str(import)

plot(Fugitive.Air~Year,data=import)

plot(Fugitive.Air~Year,data=import[import$Chemical=="TOLUENE",])


plot(Stack.Air~Year,data=import[import$Chemical=="TOLUENE",])
plot(Total.Air~Year,data=import[import$Chemical=="TOLUENE",])

plot(Fugitive.Air~Year,data=import[import$Chemical=="LEAD.COMPOUNDS",])

plot(Treated.off.site~Year,data=import[import$Chemical=="LEAD.COMPOUNDS",])

plot(Treated.off.site~Year,data=import)

plot(Treated.off.site~Year,data=import[import$Chemical=="LEAD.COMPOUNDS",])

names(import)

plot(Total.on.site.release~Year,data=import)

plot(Total.on.site.release~Year,data=import[import$Chemical=="METHANOL",])

plot(Total.on.site.release~Year,data=import[import$Chemical=="TOLUENE",])

plot(Total.on.site.release~Year,data=import[import$Chemical=="METHYL TERT-BUTYL ETHER",])

plot(Total.on.site.release~Year,data=import[import$Chemical=="XYLENE (MIXED ISOMERS)",])

plot(Total.on.site.release~Year,data=import[import$Year>2009,])

plot(Total.on.site.release~Year,data=import[import$Year>2009 & import$Chemical=="TOLUENE",],
ylab="Total on-site release (lbs)",las=1,pch=19,ylim=c(0,800))

points(Total.on.site.release~Year,data=import[import$Year>2009 & import$Chemical=="METHYL TERT-BUTYL ETHER",], pch=16)
