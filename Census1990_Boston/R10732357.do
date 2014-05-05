/* 
* TODO: 1. Place the .txt data file and the dictionary file you downloaded in the work folder, or enter the full path to these files!
*       2. You may have to increase memory using the 'set mem' statement. It is commented out in the code bellow.
*
* If you have any questions or need assistance contact info@socialexplorer.com.
*/
cd "C:\Users\Jackie\Dropbox\Civic Tech\CFB_Gentrification\Census1990_Boston"
///set mem 512m
set more off
infile using "R10732357.dct", using("R10732357_SL140.txt")

rename FIPS tractid90
drop NAME QName STUSAB SUMLEV GEOCOMP CHARITER LOGRECNU LOGRECPN PARTREC ANRC AIANACE AIANAFP AIANACC ARTLI 
drop BLOCK BLKGRP TRACT CD101 CONCITCE CONCIT CONCITCC CONCITSC CMSA COUNTY COUNTYSC COUSUBCE COUSUB COUSUBCC COUSUBSC DIVISION EXTCITIN INTUC 
drop MSACMSA MSACMSAS PLACECE PLACE PLACECC PLACEDC PLACESC PMSA REGION STATECE STATE UR UA UASC ZCTA5 CD103 
drop SAC1 SAC2 SAC3 SAC4 SAC5 SAC6 SAC7 SAC8 SAC9 SAC10 AREALAND AREAWATR FUNCSTAT GCUNI HU100 INTPTLAT INTPTLON PARTFLAG PSADC POP100 SPFLAG 
drop T093_001 T093_002 T093_003 T093_004 T093_005 T093_006 T093_007 T093_008 T093_009
rename PCT_T093_006 pctpoverty
drop PCT_T093_002 PCT_T093_003 PCT_T093_004 PCT_T093_005 PCT_T093_007 PCT_T093_008 PCT_T093_009 
drop P043_001 P043_002 P043_003 P043_004 P043_005 P043_006 P043_007 P043_008 P043_009 P043_010 P043_011 P043_012 P043_013 P043_014 P043_015
rename PCT_P043_002 pctsameres
drop PCT_P043_003 PCT_P043_004 PCT_P043_005 PCT_P043_006 PCT_P043_007 PCT_P043_008 PCT_P043_009 PCT_P043_010 
drop PCT_P043_011 PCT_P043_012 PCT_P043_013 PCT_P043_014 PCT_P043_015
gen pctunits_newres = PCT_H028_002 + PCT_H028_003
drop H028_001 H028_002 H028_003 H028_004 H028_005 H028_006 H028_007 PCT_H028_002 PCT_H028_003 PCT_H028_004 PCT_H028_005 PCT_H028_006 PCT_H028_007

