/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-7-4.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems */
/* 코드 생성일: 19. 3. 20. 오전 12:05 */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems/data-prob-7-4.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;


%web_open_table(WORK.IMPORT1);

DATA WORK.IMPORT1;
	SET WORK.IMPORT1;
	x2 = x * x;
RUN;

PROC REG DATA=WORK.IMPORT1;
	MODEL y = x x2 / R LACKFIT INFLUENCE;
RUN;