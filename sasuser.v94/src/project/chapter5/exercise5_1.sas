/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-5-1.XLS */
/* 소스 경로: /folders/myfolders/data/Chapter 5/Problems */
/* 코드 생성일: 18. 10. 20. 오후 6:05 */

%web_drop_table(BOOK.EXERCISE5_1);

LIBNAME BOOK '/folders/myfolders/sasuser.v94/';
FILENAME REFFILE '/folders/myfolders/data/Chapter 5/Problems/data-prob-5-1.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=BOOK.EXERCISE5_1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=BOOK.EXERCISE5_1; RUN;


%web_open_table(BOOK.EXERCISE5_1);

DATA BOOK.EXERCISE5_1_EXP;
	SET BOOK.EXERCISE5_1;
	log_temp = log(temp);
RUN;

PROC PRINT DATA=BOOK.EXERCISE5_1_EXP;
RUN;
	
PROC REG DATA=BOOK.EXERCISE5_1_EXP;
	MODEL visc = log_temp / R LACKFIT;
RUN;
