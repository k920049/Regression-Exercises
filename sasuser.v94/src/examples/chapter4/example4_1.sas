/* 생성된 코드(가져오기) */
/* 소스 파일: data-ex-3-1 (Delivery Time).xls */
/* 소스 경로: /folders/myfolders/data/Chapter 3/Examples */
/* 코드 생성일: 18. 10. 8. 오후 3:52 */

%web_drop_table(BOOK.DELIVERY);

LIBNAME BOOK '/folders/myfolders/sasuser.v94/';
FILENAME REFFILE '/folders/myfolders/data/Chapter 3/Examples/data-ex-3-1 (Delivery Time).xls';

PROC IMPORT DATAFILE=REFFILE
	DBMS=XLS
	OUT=BOOK.DELIVERY;
	GETNAMES=YES;
RUN;

PROC CONTENTS DATA=BOOK.DELIVERY; RUN;


%web_open_table(BOOK.DELIVERY);

PROC REG DATA=book.delivery;
	MODEL time = cases distance / R;
RUN;