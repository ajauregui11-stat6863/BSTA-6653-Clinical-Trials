Proc Power;
	twosamplemeans 
	test = diff
	stddev = 15
	sides = 1
	alpha = .05
	meandiff = 5
	ntotal = 310
	power=.;
	plot x=n min=50 max=400;
run;
