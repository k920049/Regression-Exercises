/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B3.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 9. 오후 11:46 */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B3.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;


%web_open_table(WORK.IMPORT1);

PROC REG DATA=WORK.IMPORT1;
	MODEL y = x1 x6 / R PARTIAL INFLUENCE;
RUN;