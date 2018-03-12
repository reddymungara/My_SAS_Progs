PROC IMPORT DATAFILE="/folders/myfolders/North"
			OUT=WORK.North
			DBMS=XLSX
			REPLACE;
RUN;

PROC PRINT DATA=WORK.North;
RUN;

PROC IMPORT DATAFILE="/folders/myfolders/South"
			OUT=WORK.South
			DBMS=XLSX
			REPLACE;
RUN;

DATA DATASET_NORTH_SOUTH_SUBSETTING;
		SET NORTH SOUTH;
			IF SALES_AMOUNT > 4000;
RUN;