/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-10-1 (Hald Cement).XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 10/Examples */
/* 코드 생성일: 19. 3. 26. 오후 10:50 */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 10/Examples/data-ex-10-1 (Hald Cement).XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;


%web_open_table(WORK.IMPORT1);

PROC MEANS DATA=WORK.IMPORT1;
	OUTPUT OUT=WORK.STATS MEAN=x1m x2m x3m x4m STD=x1s x2s x3s x4s;
	VAR x1 x2 x3 x4;
RUN;

DATA WORK.IMPORT1;
	SET WORK.IMPORT1;
	IF _N_ = 1 THEN SET WORK.STATS;
	x1 = (x1 - x1m) / x1s;
	x2 = (x2 - x2m) / x2s;
	x3 = (x3 - x3m) / x3s;
	x4 = (x4 - x4m) / x4s;
	DROP _TYPE_ _FREQ_;
RUN;

PROC REG DATA=WORK.IMPORT1 OUTEST=b RIDGE=0.002 to 0.1 by 0.002;
	MODEL y = x1 x2 x3 x4;
RUN;