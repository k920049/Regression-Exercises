/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B2.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 9. 오후 11:15 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B2.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

PROC REG DATA=WORK.IMPORT;
	MODEL y = x4 / R;
RUN;