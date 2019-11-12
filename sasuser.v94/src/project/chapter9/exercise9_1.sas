/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-3-1 (Delivery Time).xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 3/Examples */
/* 코드 생성일: 19. 3. 26. 오후 10:17 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 3/Examples/data-ex-3-1 (Delivery Time).xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);
/*
PROC CALIS DATA=WORK.IMPORT PCORR;
	MSTRUCT VAR=
	
*/