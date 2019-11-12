/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B14.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 15. 오후 11:44 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B14.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

DATA WORK.IMPORT;
	SET WORK.IMPORT;
	y_log = log(y);
	x1_log = log(x1);
	x2_log = log(x2);
	x3_log = log(x3);
	x4_log = log(x4);
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL y_log = x1_log x2_log x3_log x4_log / R LACKFIT;
RUN;