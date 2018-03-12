PROC IMPORT DATAFILE="/folders/myfolders/Electronic"
			OUT=WORK.ELECTRONIC
			DBMS=XLSX
			REPLACE;
RUN;

PROC PRINT DATA=WORK.ELECTRONIC;
RUN;

DATA Dataset_Output1 (DROP = Shipping_Cost Order Priority);
		Set = Electronic;
Run;
Data Dataset_Output2 (KEEP = Order_ID Product_Sales);
		Set = Electronic;
Run;
	

			