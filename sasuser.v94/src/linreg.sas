libname book '/folders/myfolders/sasuser.v94/';
proc reg data=book.delivery;
	model time=cases distance;
run;