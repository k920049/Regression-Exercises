/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-7-6.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems */
/* 코드 생성일: 19. 3. 20. 오후 10:43 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 7/Problems/data-prob-7-6.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

DATA WORK.IMPORT;
	SET WORK.IMPORT;
	x1_2 = x1 * x1;
	x2_2 = x2 * x2;
	x1_x2 = x1 * x2;
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL y = x1 x2 x1_2 x2_2 x1_x2 / R LACKFIT INFLUENCE;
RUN;
