PROC IMPORT DATAFILE='/folders/myfolders/Electronic.xlsx'
				OUT=WORK.Electronic
				DBMS=XLSX;
				GETNAMES=YES;
RUN;

PROC IMPORT DATAFILE='/folders/myfolders/Electronic_CustInfo'
				OUT=WORK.Electronic_CustInfo
				DBMS=XLSX;
				GETNAMES=YES;
RUN;

PROC SQL FEEDBACK;
		CREATE TABLE INNER_JOIN AS
			SELECT * FROM ELECTRONIC AS E, ELECTRONIC_CUSTINFO AS C
			WHERE E.ORDER_ID=C.ORDER_ID;
QUIT;

			