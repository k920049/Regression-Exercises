/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-10-29.xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 10/Problems */
/* 코드 생성일: 19. 4. 2. 오후 11:17 */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 10/Problems/data-prob-10-29.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);