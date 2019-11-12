/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-8-11.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 8/Problems */
/* 코드 생성일: 19. 3. 23. 오전 12:03 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 8/Problems/data-prob-8-11.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

DATA WORK.IMPORT;
	SET WORK.IMPORT;
	x1 = (percent = 15);
	x2 = (percent = 20);
	x3 = (percent = 25);
	x4 = (percent = 30);
RUN;

PROC PRINT DATA=WORK.IMPORT;
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL y = x1 x2 x3 x4 / R LACKFIT INFLUENCE;
RUN;