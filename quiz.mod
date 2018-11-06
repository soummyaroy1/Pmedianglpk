var Y{i in 1..10, j in 1..10}, binary;
param h{i in 1..10};
param d{i in 1..10, j in 1..10};
var X{j in 1..10},binary;
minimize zeta: sum{i in 1..10,j in 1..10}h[i]*d[i,j]*Y[i,j];
subject to
c1{i in 1..10}: sum{j in 1..10}Y[i,j] = 1; /*demand serviced by only one office*/
c2{i in 1..10, j in 1..10}: Y[i,j] <= X[j]; /*demand node can be served by office j iff there exists a office at j*/
c3{i in 1..10}: sum{j in 1..10}X[j] = 3; /* a total of 3 offices chosen*/

data;

param d: 1	2	3	4	5	6	7	8	9	10:=
	1	0	412	120	230	413	310	195	411	356	688
	2	412	0	471	232	801	324	600	113	561	300
	3	120	472	0	251	439	427	146	442	466	764
	4	230	232	251	0	642	345	391	191	512	532
	5	413	801	439	642	0	563	312	820	379	1037
	6	310	324	427	345	563	0	486	406	246	484
	7	195	600	146	391	312	486	0	582	447	882
	8	411	113	442	191	820	406	582	0	627	381
	9	356	561	466	512	379	246	447	627	0	723
	10 688 300 764 532 1037 484 882 381 723 0 ;

param h:=
1 50
2 16
3 82
4 46
5 54
6 23
7 93
8 100
9 49
10 92;

end;

