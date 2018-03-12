PROC IMPORT DATAFILE="/folders/myfolders/Electronic"
			OUT=WORK.ELECTRONIC
			DBMS=XLSX
			REPLACE;
RUN;

PROC PRINT DATA=WORK.ELECTRONIC;
RUN;

DATA Dataset_Subsetting;
		SET Electronic;
			IF Sales > 150;
		RUN;
DATA Dataset_DeleteObservations;
		SET Electronic;
			IF Sales > 150 then delete;
		RUN;
		
		