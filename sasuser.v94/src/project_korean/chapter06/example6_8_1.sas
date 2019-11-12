DATA t6_1;
	INPUT x1 x2 y @@;
		CARDS;
			4 4 9 8 10 20
			9 8 22 8 5 15
			8 10 17 12 15 30
			6 8 18 10 13 25
			6 5 10 9 12 20
			;

PROC REG;
	MODEL y = x1 x2 / I COVB;
RUN;