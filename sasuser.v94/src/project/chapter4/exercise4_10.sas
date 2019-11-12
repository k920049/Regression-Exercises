/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-2-14.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/chapter2/problems */
/* 코드 생성일: 19. 3. 10. 오전 12:35 */

%web_drop_table(WORK.IMPORT3);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/chapter2/problems/data-prob-2-14.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT3;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT3; RUN;


%web_open_table(WORK.IMPORT3);

ODS GRAPHICS ON;

PROC REG DATA=WORK.IMPORT3;
	MODEL ratio = visc / INFLUENCE R;
RUN;

PROC MIXED DATA=WORK.IMPORT3;
	MODEL ratio = visc / RESIDUAL;
RUN;

ODS GRAPHICS OFF;