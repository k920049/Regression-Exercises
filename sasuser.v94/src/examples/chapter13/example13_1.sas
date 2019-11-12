/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-13-1 (Pneumoconiosis).xls */
/* 소스 경로: /folders/myfolders/data/Montgomery Data sets/Chapter 13/Examples */
/* 코드 생성일: 19. 3. 30. 오후 11:29 */

%web_drop_table(WORK.IMPORT);


FILENAME REFFILE '/folders/myfolders/data/Montgomery Data sets/Chapter 13/Examples/data-ex-13-1 (Pneumoconiosis).xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=WORK.IMPORT;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=WORK.IMPORT; RUN;


%web_open_table(WORK.IMPORT);

PROC GENMOD DATA=WORK.IMPORT;
	MODEL Number_of_Severe_Cases / Total_Number_of_Miners = Number_of_Years_of_Exposure / DIST=BINOMIAL LINK=LOGIT LRCI TYPE1 TYPE3;
RUN;