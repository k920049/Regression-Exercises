/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B-16.xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 10. 오후 8:47 */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B-17.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);