/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-2-7.XLS */
/* 소스 경로: /folders/myfolders/data/chapter2/problems */
/* 코드 생성일: 18. 9. 19. 오후 7:30 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/chapter2/problems/data-prob-2-7.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);