/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B-15.xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 28. 오전 12:27 */

%web_drop_table(WORK.IMPORT1);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B-15.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT1;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT1; RUN;


%web_open_table(WORK.IMPORT1);

