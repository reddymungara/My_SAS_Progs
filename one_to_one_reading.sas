PROC IMPORT DATAFILE="/folders/myfolders/Electronic.xlsx"
					OUT=WORK.Electronic
					DBMS=XLSX
					REPLACE;
RUN;
PROC PRINT DATA=WORK.Electronic; 
RUN;

PROC IMPORT DATAFILE="/folders/myfolders/Electronic_Custinfo.xlsx"
					OUT=WORK.Electronic_Custinfo
					DBMS=XLSX
					REPLACE;
RUN;
PROC PRINT DATA=WORK.Electronic_Custinfo; 
RUN;

Data onetoonereading;
		set Electronic;
		set Electronic_Custinfo;
Run;