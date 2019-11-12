%web_drop_table(WORK.IMPORT);
%web_drop_table(WORK.IMPORT1);

filename reffile '/folders/myfolders/sasuser.v94/data-ex-3-1_(Delivery_Time).xls';
libname book '/folders/myfolders/sasuser.v94/';

proc import datafile=reffile
	dbms=xls
	out=book.delivery;
	getnames=YES;
run;

proc contents data=book.delivery; run;

%web_open_table(book.delivery);
