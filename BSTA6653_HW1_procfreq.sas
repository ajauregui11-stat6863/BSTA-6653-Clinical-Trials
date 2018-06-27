data disease;
	input Exposed2Risk$ Diseased$ Count @@;
	datalines;
yes yes 10 yes no 30
no yes 5 no no 55
;

PROC FREQ data=disease order=data;
	tables exposed2risk*diseased / relrisk;
	exact or;
	weight count;
run;

data disease_casecontrol;
	input Diseased$ Exposed2Risk$ Count @@;
	datalines;
yes yes 15 yes no 5
no yes 10 no no 20
;

PROC FREQ data=disease_casecontrol;
	tables diseased*exposed2risk / relrisk;
	exact or;
	weight count;
run;
