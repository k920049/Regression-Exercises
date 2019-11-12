/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B14.XLS */
/* 소스 경로: /folders/myfolders/data/Appendices */
/* 코드 생성일: 18. 10. 19. 오후 7:16 */

/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B14.XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 10. 오후 8:37 */

%web_drop_table(WORK.IMPORT2);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B14.XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT2;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT2; RUN;


%web_open_table(WORK.IMPORT2);

PROC REG DATA=WORK.IMPORT2;
	MODEL y = x1 x2 x3 x4 / R LACKFIT INFLUENCE;
RUN;

