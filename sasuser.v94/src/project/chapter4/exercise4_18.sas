/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-4-18.XLS */
/* 소스 경로: /folders/myfolders/data/Chapter 4/Problems */
/* 코드 생성일: 18. 10. 19. 오후 6:06 */

%web_drop_table(BOOK.EXERCISE4_18);

LIBNAME BOOK '/folders/myfolders/sasuser.v94/';
FILENAME REFFILE '/folders/myfolders/data/Chapter 4/Problems/data-prob-4-18.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=BOOK.EXERCISE4_18;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=BOOK.EXERCISE4_18; RUN;

%web_open_table(BOOK.EXERCISE4_18);

PROC REG DATA=BOOK.EXERCISE4_18;
	MODEL y = x1 x2 x3 / R LACKFIT;
RUN;