/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B3.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 22. 오전 12:24 */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B3.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);

DATA WORK.IMPORT2;
	SET WORK.IMPORT2;
	x1_x11 = x1 * x11;
RUN;

PROC REG DATA=WORK.IMPORT2;
	MODEL y = x1 x11 x1_x11/ R LACKFIT INFLUENCE;
RUN;