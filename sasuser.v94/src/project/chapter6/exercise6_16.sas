/* 생성된 코드(가져오기) */
/* 소스 파일: data-table-B-15.xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Appendices */
/* 코드 생성일: 19. 3. 19. 오후 9:47 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Appendices/data-table-B-15.xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

ODS GRAPHICS ON / HEIGHT=12IN;

PROC SGSCATTER DATA=WORK.IMPORT;
/*	COMPARE Y=MORT X=(EDUC NONWHITE NOX PRECIP SO2);*/
	PLOT (MORT) * (EDUC NONWHITE NOX PRECIP SO2) / COLUMNS=1;
RUN;

ODS GRAPHICS / RESET;

PROC REG DATA=WORK.IMPORT;
	MODEL MORT = EDUC NONWHITE NOX PRECIP SO2;
RUN;

DATA WORK.IMPORT;
	SET WORK.IMPORT;
	MORT = log(MORT);
	EDUC = log(EDUC);
	NONWHITE = log(NONWHITE);
	NOX = log(NOX);
	PRECIP = log(PRECIP);
	SO2 = log(SO2);
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL MORT = EDUC NONWHITE NOX PRECIP SO2 / R LACKFIT INFLUENCE;
RUN;

ODS GRAPHICS OFF;