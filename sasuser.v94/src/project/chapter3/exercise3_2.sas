LIBNAME BOOK '/folders/myfolders/sasuser.v94/';

PROC REG DATA=BOOK.EXERCISE3_1_HAT CORR;
	MODEL y = yhat / CLI CLM;
RUN;