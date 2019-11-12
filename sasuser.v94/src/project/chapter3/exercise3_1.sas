/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-3-1 (Delivery Time).xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 3/Examples */
/* 코드 생성일: 19. 4. 2. 오후 11:09 */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 3/Examples/data-ex-3-1 (Delivery Time).xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);

PROC REG DATA=WORK.IMPORT2 PLOTS=ALL;
	MODEL Delivery_Time__y = Number_of_Cases__x1;
/*	OUTPUT OUT = BOOK.EXERCISE3_1_HAT PREDICTED=yhat;*/
RUN;
/*
DATA BOOK.EXERCISE3_1_JOIN;
	SET BOOK.EXERCISE3_1 BOOK.EXERCISE3_1_HAT;
RUN;

PROC REG DATA=BOOK.EXERCISE3_1_JOIN CORR;
	MODEL y = yhat / CLI CLM;
RUN;
*/