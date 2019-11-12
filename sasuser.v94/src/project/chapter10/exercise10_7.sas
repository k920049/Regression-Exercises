/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B5.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 4. 2. 오후 8:58 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B5.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

PROC REG DATA=WORK.IMPORT;
	MODEL y = x1 x2 x3 x4 x5 x6 x7 / SELECTION=STEPWISE SLENTRY=0.04 SLSTAY=0.04;
RUN;