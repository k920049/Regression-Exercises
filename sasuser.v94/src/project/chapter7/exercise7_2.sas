/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-7-2.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems */
/* 코드 생성일: 19. 3. 19. 오후 11:55 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems/data-prob-7-2.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

PROC REG DATA=WORK.IMPORT;
	MODEL y = x;
RUN;

DATA WORK.IMPORT;
	SET WORK.IMPORT;
	x_sq = x * x;
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL y = x x_sq/ R LACKFIT INFLUENCE;
RUN;
	