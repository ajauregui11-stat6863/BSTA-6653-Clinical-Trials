*Purpose: to run McNemar's Chi-square test for paired samples;
*;
Proc format;
Value $opinion 'P' = 'Pro-speeding'
'A' = 'Anti-speeding';
data mcnemar;
length before after $ 1;
input after $ before $ count;
format before after $opinion.;
datalines;
P P 35
A P 40
P A 15
A A 10
;
PROC FREQ data = mcnemar order=data;
Title "McNemar's test for paired samples: example";
Tables before*after / agree;
Weight count;
Run;
