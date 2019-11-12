LIBNAME BOOK '/folders/myfolders/sasuser.v94/';

DATA BOOK.EXERCISE5_13_MOMENT;
	SET BOOK.EXERCISE5_13;
	y_mean = mean(y1, y2, y3);
	y_var = var(y1, y2, y3);
	w = 1 / y_var;
RUN;

PROC PRINT DATA=book.exercise5_13_moment;
RUN;

PROC REG DATA=book.exercise5_13_moment;
	MODEL y_mean = x1 x2 x3 x4 / R LACKFIT;
	WEIGHT w;
RUN;
