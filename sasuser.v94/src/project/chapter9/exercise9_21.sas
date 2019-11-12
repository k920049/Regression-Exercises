/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-10-1 (Hald Cement).XLS */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 10/Examples */
/* 코드 생성일: 19. 3. 27. 오후 11:31 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 10/Examples/data-ex-10-1 (Hald Cement).XLS';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

PROC PRINCOMP DATA=WORK.IMPORT OUT=WORK.EIGEN STD;
	VAR x1 x2 x3 x4;
	ODS SELECT EIGENVECTORS EIGENVALUES;
	ODS TRACE ON;
	ODS SHOW;
RUN;

PROC REG DATA=WORK.IMPORT;
	MODEL y = x1 x2 x3 x4;
RUN;


PROC REG DATA=WORK.EIGEN;
	MODEL y = prin1 prin2 prin3 prin4 / VIF;
RUN;

PROC REG DATA=WORK.EIGEN;
	MODEL y = prin1;
RUN;

	