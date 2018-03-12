Data Electronic;
input Product_name $ Salesman $ Price;
Datalines;
LED Mohan 49999
LCD Krishna 39999
Mobile Reddy 29999
XBOX Mungara 19999
;
proc print data=Electronic;
	title 'Electronic Dataset of an online store';
Run;