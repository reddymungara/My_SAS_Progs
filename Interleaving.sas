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

PROC SORT DATA=WORK.Electronic;
			BY SALES;
RUN;

PROC PRINT DATA=WORK.Fashion;
			BY SALES;
RUN;

DATA OUTPUT_INTERLEAVING;
	SET ELECTRONIC FASHION;
	BY SALES;
RUN;
