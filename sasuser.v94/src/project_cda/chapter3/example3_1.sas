data fisher;
input poured guess count ;
datalines;
1 1 3    
1 2 1    
2 1 1    
2 2 3
;
proc freq;  weight count;
   tables poured*guess / measures riskdiff;
   exact fisher or / alpha=.05;
proc logistic descending;  freq count;
    model guess = poured / clodds=pl;