LIBNAME BOOK '/folders/myfolders/sasuser.v94/';

PROC REG DATA=book.exercise2_12 CORR;
	MODEL temp = usage / P R CLM CLI;
RUN;