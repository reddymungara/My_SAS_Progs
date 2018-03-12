FILENAME REFFILE '/folders/myfolders/Electronic.xlsx';

PROC IMPORT DATAFILE=REFFILE
			DBMS=XLSX
			OUT=WORK.Electronic;
			GETNAMES=YES;
RUN;

PROC SQL;
	SELECT PRODUCT, SUM(SALES) AS SALES_NUMBER FROM ELECTRONIC
	WHERE SALES > 200
	GROUP BY PRODUCT
	HAVING SUM(SALES) > 450;
QUIT;
