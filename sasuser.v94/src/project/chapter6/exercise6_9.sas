/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B10.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 19. 오전 12:23 */

%web_drop_table(WORK.IMPORT4);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B10.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT4;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT4; RUN;


%web_open_table(WORK.IMPORT4);

PROC REG DATA=WORK.IMPORT4;
	MODEL y = x1 x2;
RUN;


PROC SGSCATTER DATA=WORK.IMPORT4;
	COMPARE X=(x1 x2) Y=y;
RUN;

DATA WORK.IMPORT4;
	SET WORK.IMPORT4;
	IF _N_ = 1 THEN DELETE;
	y = log(y);
RUN;

PROC REG DATA=WORK.IMPORT4;
	MODEL y = x1 x2 / R LACKFIT INFLUENCE;
RUN;
