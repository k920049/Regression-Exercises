/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-2-12.XLS */
/* 소스 경로: /folders/myfolders/data/chapter2/problems */
/* 코드 생성일: 18. 9. 25. 오후 8:31 */

%web_drop_table(BOOK.EXERCISE2_12);

LIBNAME BOOK '/folders/myfolders/sasuser.v94/';
FILENAME REFFILE '/folders/myfolders/data/chapter2/problems/data-prob-2-12.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=BOOK.EXERCISE2_12;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=BOOK.EXERCISE2_12; RUN;

DATA NEWAPPS;
	INPUT temp;
DATALINES;
58
;

DATA REPORT; SET book.exercise2_12 NEWAPPS;
PREDICT_ID=temp;
RUN;

PROC REG DATA=REPORT;
	ID PREDICT_ID;
	MODEL usage = temp / P CLI;
RUN;