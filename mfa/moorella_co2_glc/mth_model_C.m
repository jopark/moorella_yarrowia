function mol=mth_model_C(free_net,free_xch,in)

kernel_net=[ -0 1.5 1.5 1 1 -1 -0 -2 -0 0.5 -1;
 -0 -0.5 -0.5 -0 1 2 1 2 1 0.5 1;
 -0 -0 -1 -0 1 2 1 2 -0 -0 1;
 1 -0 -1 -0 -0 1 1 1 -0 -0 1;
 -1 -0 -0 -0 1 1 -0 1 -0 -0 -0;
 1 0 0 0 0 0 0 0 0 0 0;
 -0 -0 -1 -0 -0 1 -0 1 -0 -0 1;
 -0 -0 -0 -0 -0 1 -0 1 -0 -0 -0;
 -0 -0 -0 -0 -0 1 -0 1 -0 -0 -0;
 -0 -0 -0 -0 -0 -0 -0 1 -0 -0 -0;
 -0 -0.5 0.5 -0 -0 -0 -0 -0 1 0.5 -0;
 -0 -0.5 0.5 -0 -0 -0 -0 -0 -0 0.5 -0;
 -0 -0.5 0.5 -0 -0 -0 -0 -0 -0 -0.5 -0;
 -0 -0.5 0.5 0 0 0 0 0 0 -0.5 0;
 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 0 1 0 0 0 0 0 0 0 0 0;
 -0 -0 1 -0 -0 -0 -0 -0 -0 -0 -0;
 -0 -0 1 -0 -0 -0 -0 -0 -0 -0 -0;
 0 0 1 0 0 0 0 0 0 0 0;
 0 0 0 1 0 0 0 0 0 0 0;
 0 0 0 0 1 0 0 0 0 0 0;
 0 0 0 0 0 1 0 0 0 0 0;
 0 0 0 0 0 0 1 0 0 0 0;
 0 0 0 0 0 0 0 1 0 0 0;
 0 0 0 0 0 0 0 0 1 0 0;
 0 0 0 0 0 0 0 0 0 1 0;
 0 0 0 0 0 0 0 0 0 0 1];

kernel_xch=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

net=sparse(kernel_net)*free_net;
xch=sparse(kernel_xch)*free_xch;

f=xch+max(0,net);
b=xch-min(0,net);

%%
A1=zeros(41);
A1(1,1)=-b(15)-f(16);
A1(1,2)=b(16);
A1(1,6)=f(15);
A1(2,1)=f(16);
A1(2,2)=-b(12)-b(14)-b(16)-f(17);
A1(2,3)=b(17);
A1(2,4)=f(14);
A1(2,12)=f(12);
A1(3,2)=f(17);
A1(3,3)=-b(17)-f(18);
A1(3,5)=b(18);
A1(4,2)=b(14);
A1(4,4)=-b(13)-f(14);
A1(4,9)=f(13);
A1(5,3)=f(18);
A1(5,5)=-b(18)-f(19);
A1(5,7)=b(19);
A1(6,1)=b(15);
A1(6,6)=-b(1)-b(7)-b(9)-b(10)-b(13)-f(5)-f(6)-f(15)-f(19)-f(20);
A1(6,10)=b(19);
A1(6,13)=f(7);
A1(6,14)=f(9);
A1(6,15)=f(10);
A1(6,16)=f(13);
A1(6,17)=b(5)+b(6);
A1(7,5)=f(19);
A1(7,7)=-b(7)-b(19)-f(8)-f(27);
A1(7,18)=f(7);
A1(7,19)=b(8);
A1(8,8)=-b(10)-f(24);
A1(8,20)=f(10);
A1(9,4)=b(13);
A1(9,9)=-b(12)-f(13)-f(26);
A1(9,21)=f(12);
A1(10,6)=f(19);
A1(10,10)=-b(7)-b(19)-f(8)-f(27);
A1(10,22)=f(7);
A1(10,23)=b(8);
A1(11,11)=-b(9)-f(10)-f(22);
A1(11,24)=f(9);
A1(11,25)=b(10);
A1(12,2)=b(12);
A1(12,12)=-b(11)-f(12)-f(25);
A1(12,26)=f(11);
A1(13,6)=b(7);
A1(13,13)=-b(4)-f(6)-f(7)-f(23);
A1(13,27)=f(4);
A1(13,28)=b(6);
A1(14,6)=b(9);
A1(14,14)=-b(8)-f(9);
A1(14,28)=f(8);
A1(15,6)=b(10);
A1(15,15)=-b(9)-f(10)-f(22);
A1(15,23)=f(9);
A1(16,6)=b(13);
A1(16,16)=-b(12)-f(13)-f(26);
A1(16,29)=f(12);
A1(17,6)=f(5)+f(6);
A1(17,17)=-b(5)-b(6)-f(8)-f(21);
A1(17,30)=b(8);
A1(18,7)=b(7);
A1(18,18)=-b(4)-f(6)-f(7)-f(23);
A1(18,31)=f(4);
A1(18,32)=b(6);
A1(19,7)=f(8);
A1(19,19)=-b(8)-f(9);
A1(19,20)=b(9);
A1(20,8)=b(10);
A1(20,19)=f(9);
A1(20,20)=-b(9)-f(10)-f(22);
A1(21,9)=b(12);
A1(21,21)=-b(11)-f(12)-f(25);
A1(21,33)=f(11);
A1(22,10)=b(7);
A1(22,22)=-b(4)-f(6)-f(7)-f(23);
A1(22,34)=f(4);
A1(22,35)=b(6);
A1(23,10)=f(8);
A1(23,15)=b(9);
A1(23,23)=-b(8)-f(9);
A1(24,11)=b(9);
A1(24,24)=-b(8)-f(9);
A1(24,35)=f(8);
A1(25,11)=f(10);
A1(25,25)=-b(10)-f(24);
A1(26,12)=b(11);
A1(26,26)=-b(2)-f(3)-f(11);
A1(26,31)=b(3);
A1(27,13)=b(4);
A1(27,27)=-b(3)-f(4)-f(5);
A1(27,28)=b(5);
A1(27,36)=f(3);
A1(28,13)=f(6);
A1(28,14)=b(8);
A1(28,27)=f(5);
A1(28,28)=-b(5)-b(6)-f(8)-f(21);
A1(29,16)=b(12);
A1(29,29)=-b(11)-f(12)-f(25);
A1(29,36)=f(11);
A1(30,17)=f(8);
A1(30,30)=-b(8)-f(9);
A1(30,37)=b(9);
A1(31,18)=b(4);
A1(31,26)=f(3);
A1(31,31)=-b(3)-f(4)-f(5);
A1(31,32)=b(5);
A1(32,18)=f(6);
A1(32,31)=f(5);
A1(32,32)=-b(5)-b(6)-f(8)-f(21);
A1(32,38)=b(8);
A1(33,21)=b(11);
A1(33,33)=-b(2)-f(3)-f(11);
A1(33,34)=b(3);
A1(34,22)=b(4);
A1(34,33)=f(3);
A1(34,34)=-b(3)-f(4)-f(5);
A1(34,35)=b(5);
A1(35,22)=f(6);
A1(35,24)=b(8);
A1(35,34)=f(5);
A1(35,35)=-b(5)-b(6)-f(8)-f(21);
A1(36,27)=b(3);
A1(36,29)=b(11);
A1(36,36)=-b(2)-f(3)-f(11);
A1(37,30)=f(9);
A1(37,37)=-b(9)-f(10)-f(22);
A1(37,39)=b(10);
A1(38,32)=f(8);
A1(38,38)=-b(8)-f(9);
A1(38,40)=b(9);
A1(39,37)=f(10);
A1(39,39)=-b(10)-f(24);
A1(40,38)=f(9);
A1(40,40)=-b(9)-f(10)-f(22);
A1(40,41)=b(10);
A1(41,40)=f(10);
A1(41,41)=-b(10)-f(24);

B1=zeros(41,4);
B1(6,1)=-f(1);
B1(26,2)=-f(2);
B1(33,3)=-f(2);
B1(36,4)=-f(2);

y1=[ in.CO2_IN_1; in.pg3_IN_3; in.pg3_IN_2; in.pg3_IN_1];
x1=sparse(A1)\(B1*sparse(y1));

%%
A2=zeros(11);
A2(1,1)=-b(7)-b(19)-f(8)-f(27);
A2(1,3)=f(7);
A2(1,5)=b(8);
A2(2,2)=-b(3)-f(4)-f(5);
A2(2,3)=b(4);
A2(2,6)=f(3);
A2(2,7)=b(5);
A2(3,1)=b(7);
A2(3,2)=f(4);
A2(3,3)=-b(4)-f(6)-f(7)-f(23);
A2(3,7)=b(6);
A2(4,4)=-b(9)-f(10)-f(22);
A2(4,8)=f(9);
A2(4,9)=b(10);
A2(5,1)=f(8);
A2(5,5)=-b(8)-f(9);
A2(5,10)=b(9);
A2(6,2)=b(3);
A2(6,6)=-b(2)-f(3)-f(11);
A2(6,11)=b(11);
A2(7,2)=f(5);
A2(7,3)=f(6);
A2(7,7)=-b(5)-b(6)-f(8)-f(21);
A2(7,8)=b(8);
A2(8,4)=b(9);
A2(8,7)=f(8);
A2(8,8)=-b(8)-f(9);
A2(9,4)=f(10);
A2(9,9)=-b(10)-f(24);
A2(10,5)=f(9);
A2(10,10)=-b(9)-f(10)-f(22);
A2(11,6)=f(11);
A2(11,11)=-b(11)-f(12)-f(25);

B2=zeros(11,4);
B2(1,1)=-f(19);
B2(6,3)=-f(2);
B2(10,2)=-b(10);
B2(11,4)=-b(12);

y2=[ cauchy(x1(5,:),x1(6,:)); cauchy(x1(6,:),x1(8,:)); in.pg3_IN_2_3; cauchy(x1(2,:),x1(9,:))];
x2=sparse(A2)\(B2*sparse(y2));

%%
A3=zeros(7);
A3(1,1)=-b(12)-f(13)-f(26);
A3(1,2)=f(12);
A3(2,1)=b(12);
A3(2,2)=-b(11)-f(12)-f(25);
A3(2,3)=f(11);
A3(3,2)=b(11);
A3(3,3)=-b(2)-f(3)-f(11);
A3(3,4)=b(3);
A3(4,3)=f(3);
A3(4,4)=-b(3)-f(4)-f(5);
A3(4,5)=b(4);
A3(4,6)=b(5);
A3(5,4)=f(4);
A3(5,5)=-b(4)-f(6)-f(7)-f(23);
A3(5,6)=b(6);
A3(6,4)=f(5);
A3(6,5)=f(6);
A3(6,6)=-b(5)-b(6)-f(8)-f(21);
A3(6,7)=b(8);
A3(7,6)=f(8);
A3(7,7)=-b(8)-f(9);

B3=zeros(7,4);
B3(1,1)=-b(13);
B3(3,2)=-f(2);
B3(5,3)=-b(7);
B3(7,4)=-b(9);

y3=[ cauchy(x1(4,:),x1(6,:)); in.pg3_IN_1_2; cauchy(x1(6,:),x1(10,:)); cauchy(x1(6,:),x1(11,:))];
x3=A3\(B3*sparse(y3));

%%
A4=zeros(6);
A4(1,1)=-b(2)-f(3)-f(11);
A4(1,2)=b(3);
A4(1,4)=b(11);
A4(2,1)=f(3);
A4(2,2)=-b(3)-f(4)-f(5);
A4(2,3)=b(4);
A4(2,5)=b(5);
A4(3,2)=f(4);
A4(3,3)=-b(4)-f(6)-f(7)-f(23);
A4(3,5)=b(6);
A4(4,1)=f(11);
A4(4,4)=-b(11)-f(12)-f(25);
A4(5,2)=f(5);
A4(5,3)=f(6);
A4(5,5)=-b(5)-b(6)-f(8)-f(21);
A4(5,6)=b(8);
A4(6,5)=f(8);
A4(6,6)=-b(8)-f(9);

B4=zeros(6,4);
B4(1,3)=-f(2);
B4(3,1)=-b(7);
B4(4,2)=-b(12);
B4(6,4)=-b(9);

y4=[ cauchy(x1(6,:),x2(1,:)); cauchy(x1(2,:),x3(1,:)); in.pg3_IN_1_2_3; cauchy(x1(6,:),x2(4,:))];
x4=A4\(B4*sparse(y4));

%%
A5=zeros(4);
A5(1,1)=-b(5)-b(6)-f(8)-f(21);
A5(1,3)=b(8);
A5(2,2)=-b(9)-f(10)-f(22);
A5(2,3)=f(9);
A5(2,4)=b(10);
A5(3,1)=f(8);
A5(3,2)=b(9);
A5(3,3)=-b(8)-f(9);
A5(4,2)=f(10);
A5(4,4)=-b(10)-f(24);

B5=zeros(4,2);
B5(1,1)=-f(5);
B5(1,2)=-f(6);

y5=[ cauchy(x1(6,:),x2(2,:)); cauchy(x1(6,:),x2(3,:))];
x5=A5\(B5*sparse(y5));

%%
A6=zeros(2);
A6(1,1)=-b(5)-b(6)-f(8)-f(21);
A6(1,2)=b(8);
A6(2,1)=f(8);
A6(2,2)=-b(8)-f(9);

B6=zeros(2,3);
B6(1,1)=-f(5);
B6(1,2)=-f(6);
B6(2,3)=-b(9);

y6=[ cauchy(x1(6,:),x4(2,:)); cauchy(x1(6,:),x4(3,:)); cauchy(x1(6,:),x5(2,:))];
x6=A6\(B6*sparse(y6));

%%
A7=zeros(3);
A7(1,1)=-b(10)-f(24);
A7(1,2)=f(10);
A7(2,1)=b(10);
A7(2,2)=-b(9)-f(10)-f(22);
A7(2,3)=f(9);
A7(3,2)=b(9);
A7(3,3)=-b(8)-f(9);

B7=zeros(3,1);
B7(3,1)=-f(8);

y7=[ cauchy(x1(7,:),x5(1,:))];
x7=A7\(B7*sparse(y7));

%%
A8=zeros(2);
A8(1,1)=-b(9)-f(10)-f(22);
A8(1,2)=f(9);
A8(2,1)=b(9);
A8(2,2)=-b(8)-f(9);

B8=zeros(2,2);
B8(1,1)=-b(10);
B8(2,2)=-f(8);

y8=[ cauchy(x1(6,:),x7(1,:)); cauchy(x2(1,:),x5(1,:))];
x8=A8\(B8*sparse(y8));

%%
A9=zeros(1);
A9(1,1)=-b(8)-f(9);

B9=zeros(1,2);
B9(1,1)=-f(8);
B9(1,2)=-b(9);

y9=[ cauchy(x2(1,:),x6(1,:)); cauchy(x1(6,:),x8(1,:))];
x9=A9\(B9*sparse(y9));

%%
mol.pg3=x4(1,:);
mol.pep=x4(2,:);
mol.pyr=x4(3,:);
mol.accoa=x2(1,:);
mol.fthf=x1(1,:);
mol.mlthf=x1(2,:);
mol.mthf=x1(3,:);
mol.mlp=x1(4,:);
mol.mcfesp=x1(5,:);
mol.oa=x6(1,:);
mol.cit=x9(1,:);
mol.akg=x8(1,:);
mol.succoa=x7(1,:);
mol.CO2=x1(6,:);
mol.ser=x4(4,:);
mol.gly=x3(1,:);