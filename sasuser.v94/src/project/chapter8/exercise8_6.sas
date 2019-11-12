/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B1.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 22. 오전 12:40 */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B1.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);

DATA WORK.IMPORT3;
	SET WORK.IMPORT3;
	turnover_positive = (x5 > 0);
	turnover_zero = (x5 = 0);
	turnover_negative = (x5 < 0);
RUN;

PROC REG DATA=WORK.IMPORT3;
	MODEL y = x7 x8 turnover_positive turnover_zero turnover_negative / R LACKFIT INFLUENCE;
RUN;