PROC IMPORT DATAFILE="/folders/myfolders/Electronic.xlsx"
					OUT=WORK.Electronic
					DBMS=XLSX
					REPLACE;
RUN;
PROC PRINT DATA=WORK.Electronic;
RUN;

PROC IMPORT DATAFILE="/folders/myfolders/Fashion.xlsx"
					OUT=WORK.Fashion
					DBMS=XLSX
					REPLACE;
RUN;
PROC PRINT DATA=WORK.Fashion; 
RUN;

Data Work.combinedDataset;

set Work.ELECTRONIC Work.FASHION;

RUN;