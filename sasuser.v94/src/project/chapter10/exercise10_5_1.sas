/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B3.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 4. 1. 오전 12:59 */
%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B3.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);

PROC REG DATA=WORK.IMPORT2;
	MODEL y = x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 / SELECTION=STEPWISE;
RUN;