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