/* 생성된 코드(가져오기) */
/* 소스 파일: data-prob-2-10.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/chapter2/problems */
/* 코드 생성일: 19. 3. 10. 오전 12:04 */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/chapter2/problems/data-prob-2-10.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);

PROC REG DATA=WORK.IMPORT2;
	MODEL weight = sys_bp / R ;
RUN;