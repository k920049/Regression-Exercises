%web_drop_table(book.asphalt);

filename reffile = '/folders/myfolders/data/chapter9/examples/asphalt.xls';
libname book '/folders/myfolders/sasuser.v94/';

proc import datafile=reffile
	dbms=xls
	out=book.asphalt;
	getnames=YES;
run;

proc contents data=book.asphalt;run;

%web_open_table(book.asphalt);