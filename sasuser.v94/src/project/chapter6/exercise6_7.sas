/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B8.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 19. 오전 12:01 */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B8.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);

PROC REG DATA=WORK.IMPORT3;
	MODEL y = x1 x2;
RUN;

PROC SGSCATTER DATA=WORK.IMPORT3;
	COMPARE X = (x1 x2) Y = y;
RUN;

DATA WORK.IMPORT3;
	SET WORK.IMPORT3;
	y = log(y);
	x2 = log(x2);
RUN;

PROC REG DATA=WORK.IMPORT3;
	MODEL y = x1 x2 / R LACKFIT INFLUENCE;
RUN;