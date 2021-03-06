function mol=yli_model_C(free_net,free_xch,in)

kernel_net=[ -0 -0 -0 -0 -1 -2 2 1 -0 -0 -0 -0 -0 -0 -0 1 -0 -0;
 -0 -0.5 1 -0 1 1.5 -1.5 -0 1 -0 -0 -0 -0 0.5 -0 -0.5 0.5 -0;
 -0 -0 -0 -1 -1 -2 2 -0 -0 1 -0 -0 -0 -0 -0 1 -0 -0;
 -0 -1 -0 -0 -0 -0 -0 -0 -0 -0 1 -0 -0 -0 -0 -0 -1 -0;
 -0 -1 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 -0 -0 -1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 1;
 -0 -0 -0 -0 -1 1 -1 -0 -0 -0 -0 -0 -0 -0 1 -0 -0 -0;
 -0 -0 -0 -1 1 2 -2 -0 -0 -0 -0 -0 -0 -0 -0 -1 -0 -0;
 -1 0.5 -0 1 -0 -2.5 2.5 -0 -0 -0 -0 1 1 0.5 -0 1.5 0.5 -0;
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 -0 0.5 -0 -0 -0 -2.5 2.5 -0 -0 -0 -0 -0 1 0.5 -0 1.5 0.5 -0;
 -0 0.5 -0 -0 -0 -0.5 1.5 -0 -0 -0 -0 -0 -0 0.5 -0 0.5 0.5 -0;
 -0 0.5 -0 -0 -0 -0.5 1.5 -0 -0 -0 -0 -0 -0 0.5 -0 0.5 0.5 -0;
 -0 0.5 -0 -0 -0 -0.5 0.5 -0 -0 -0 -0 -0 -0 -0.5 -0 0.5 0.5 -0;
 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 1 -0;
 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 1 -0;
 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 -0 -0 -0 -0 1 2 -2 -0 -0 -0 -0 -0 -0 -0 -0 -1 -0 -0;
 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
 -0 -0 -0 -0 -0 2 -2 -0 -0 -0 -0 -0 -0 -0 -0 -1 -0 -0;
 -0 -0 -0 -0 -0 1 -1 -0 -0 -0 -0 -0 -0 -0 -0 -1 -0 -0;
 -0 -0 -0 -0 -0 1 -1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
 -0 -0 -0 -0 -0 -0 1 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0 -0;
 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0];

kernel_xch=[ 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0;
 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1];

net=sparse(kernel_net)*free_net;
xch=sparse(kernel_xch)*free_xch;

f=xch+max(0,net);
b=xch-min(0,net);

%%
A1=zeros(82);
A1(1,1)=-b(1)-b(22)-f(30);
A1(1,11)=f(22);
A1(2,2)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(2,5)=f(27);
A1(2,8)=f(25);
A1(2,12)=f(11);
A1(2,13)=b(12);
A1(3,3)=-b(13)-f(14)-f(28)-f(36);
A1(3,13)=f(13);
A1(3,14)=b(14);
A1(3,15)=b(28);
A1(4,4)=-b(24)-f(25)-f(26);
A1(4,6)=b(25);
A1(4,7)=b(26);
A1(4,16)=f(24);
A1(5,2)=b(27);
A1(5,5)=-b(26)-b(29)-f(27);
A1(5,9)=f(26);
A1(5,15)=f(29);
A1(6,4)=f(25);
A1(6,6)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(6,7)=f(27);
A1(6,17)=f(11);
A1(6,18)=b(12);
A1(7,4)=f(26);
A1(7,6)=b(27);
A1(7,7)=-b(26)-b(29)-f(27);
A1(7,19)=f(29);
A1(8,2)=b(25);
A1(8,8)=-b(27)-f(25)-f(28)-f(38);
A1(8,20)=f(27);
A1(8,21)=b(28);
A1(9,5)=b(26);
A1(9,9)=-b(7)-b(23)-f(26)-f(37);
A1(9,10)=f(23);
A1(10,9)=b(23);
A1(10,10)=-b(22)-f(23)-f(24);
A1(10,22)=f(22);
A1(10,23)=b(24);
A1(11,1)=b(22);
A1(11,11)=-b(8)-b(21)-f(22);
A1(11,24)=f(21);
A1(12,2)=b(11);
A1(12,12)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(12,25)=b(21);
A1(13,2)=f(12);
A1(13,3)=b(13);
A1(13,13)=-b(12)-f(13);
A1(14,3)=f(14);
A1(14,14)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A1(14,26)=f(13);
A1(14,27)=f(25)+f(26);
A1(14,28)=b(15);
A1(14,29)=b(27);
A1(15,3)=f(28);
A1(15,5)=b(29);
A1(15,15)=-b(28)-f(29);
A1(16,4)=b(24);
A1(16,16)=-b(22)-f(23)-f(24);
A1(16,25)=f(22);
A1(16,30)=b(23);
A1(17,6)=b(11);
A1(17,17)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(17,22)=b(21);
A1(18,6)=f(12);
A1(18,18)=-b(12)-f(13);
A1(18,31)=b(13);
A1(19,7)=b(29);
A1(19,19)=-b(28)-f(29);
A1(19,31)=f(28);
A1(20,8)=b(27);
A1(20,20)=-b(26)-b(29)-f(27);
A1(20,21)=f(29);
A1(20,30)=f(26);
A1(21,8)=f(28);
A1(21,20)=b(29);
A1(21,21)=-b(28)-f(29);
A1(22,10)=b(22);
A1(22,17)=f(21);
A1(22,22)=-b(8)-b(21)-f(22);
A1(23,10)=f(24);
A1(23,23)=-b(24)-f(25)-f(26);
A1(23,32)=b(25);
A1(23,33)=b(26);
A1(24,11)=b(21);
A1(24,24)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(24,32)=b(11);
A1(25,12)=f(21);
A1(25,16)=b(22);
A1(25,25)=-b(8)-b(21)-f(22);
A1(26,14)=b(13);
A1(26,26)=-b(12)-f(13);
A1(26,29)=f(12);
A1(27,14)=b(25)+b(26);
A1(27,27)=-b(24)-f(25)-f(26);
A1(27,34)=f(24);
A1(28,14)=f(15);
A1(28,28)=-b(15)-f(16);
A1(28,35)=b(16);
A1(29,14)=f(27);
A1(29,26)=b(12);
A1(29,29)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(29,36)=f(11);
A1(29,37)=f(25);
A1(30,16)=f(23);
A1(30,20)=b(26);
A1(30,30)=-b(7)-b(23)-f(26)-f(37);
A1(31,18)=f(13);
A1(31,19)=b(28);
A1(31,31)=-b(13)-f(14)-f(28)-f(36);
A1(31,38)=b(14);
A1(32,23)=f(25);
A1(32,24)=f(11);
A1(32,32)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(32,33)=f(27);
A1(32,39)=b(12);
A1(33,23)=f(26);
A1(33,32)=b(27);
A1(33,33)=-b(26)-b(29)-f(27);
A1(33,40)=f(29);
A1(34,27)=b(24);
A1(34,34)=-b(22)-f(23)-f(24);
A1(34,41)=f(22);
A1(34,42)=b(23);
A1(35,28)=f(16);
A1(35,35)=-b(16)-f(17)-f(39);
A1(35,43)=b(17);
A1(36,29)=b(11);
A1(36,36)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(36,41)=b(21);
A1(37,29)=b(25);
A1(37,37)=-b(27)-f(25)-f(28)-f(38);
A1(37,44)=f(27);
A1(37,45)=b(28);
A1(38,31)=f(14);
A1(38,38)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A1(38,46)=f(13);
A1(38,47)=f(25)+f(26);
A1(38,48)=b(15);
A1(38,49)=b(27);
A1(39,32)=f(12);
A1(39,39)=-b(12)-f(13);
A1(39,50)=b(13);
A1(40,33)=b(29);
A1(40,40)=-b(28)-f(29);
A1(40,50)=f(28);
A1(41,34)=b(22);
A1(41,36)=f(21);
A1(41,41)=-b(8)-b(21)-f(22);
A1(42,34)=f(23);
A1(42,42)=-b(7)-b(23)-f(26)-f(37);
A1(42,44)=b(26);
A1(43,35)=f(17);
A1(43,43)=-b(17)-f(18);
A1(43,51)=b(18);
A1(44,37)=b(27);
A1(44,42)=f(26);
A1(44,44)=-b(26)-b(29)-f(27);
A1(44,45)=f(29);
A1(45,37)=f(28);
A1(45,44)=b(29);
A1(45,45)=-b(28)-f(29);
A1(46,38)=b(13);
A1(46,46)=-b(12)-f(13);
A1(46,49)=f(12);
A1(47,38)=b(25)+b(26);
A1(47,47)=-b(24)-f(25)-f(26);
A1(47,52)=f(24);
A1(48,38)=f(15);
A1(48,48)=-b(15)-f(16);
A1(48,53)=b(16);
A1(49,38)=f(27);
A1(49,46)=b(12);
A1(49,49)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(49,54)=f(11);
A1(49,55)=f(25);
A1(50,39)=f(13);
A1(50,40)=b(28);
A1(50,50)=-b(13)-f(14)-f(28)-f(36);
A1(50,56)=b(14);
A1(51,43)=f(18);
A1(51,51)=-b(18)-f(19);
A1(51,57)=b(19);
A1(52,47)=b(24);
A1(52,52)=-b(22)-f(23)-f(24);
A1(52,58)=f(22);
A1(52,59)=b(23);
A1(53,48)=f(16);
A1(53,53)=-b(16)-f(17)-f(39);
A1(53,60)=b(17);
A1(54,49)=b(11);
A1(54,54)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(54,58)=b(21);
A1(55,49)=b(25);
A1(55,55)=-b(27)-f(25)-f(28)-f(38);
A1(55,61)=f(27);
A1(55,62)=b(28);
A1(56,50)=f(14);
A1(56,56)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A1(56,63)=f(13);
A1(56,64)=f(25)+f(26);
A1(56,65)=b(15);
A1(56,66)=b(27);
A1(57,51)=f(19);
A1(57,57)=-b(5)-b(19)-f(20);
A1(57,67)=b(20);
A1(58,52)=b(22);
A1(58,54)=f(21);
A1(58,58)=-b(8)-b(21)-f(22);
A1(59,52)=f(23);
A1(59,59)=-b(7)-b(23)-f(26)-f(37);
A1(59,61)=b(26);
A1(60,53)=f(17);
A1(60,60)=-b(17)-f(18);
A1(60,68)=b(18);
A1(61,55)=b(27);
A1(61,59)=f(26);
A1(61,61)=-b(26)-b(29)-f(27);
A1(61,62)=f(29);
A1(62,55)=f(28);
A1(62,61)=b(29);
A1(62,62)=-b(28)-f(29);
A1(63,56)=b(13);
A1(63,63)=-b(12)-f(13);
A1(63,66)=f(12);
A1(64,56)=b(25)+b(26);
A1(64,64)=-b(24)-f(25)-f(26);
A1(64,69)=f(24);
A1(65,56)=f(15);
A1(65,65)=-b(15)-f(16);
A1(65,70)=b(16);
A1(66,56)=f(27);
A1(66,63)=b(12);
A1(66,66)=-b(11)-b(25)-b(27)-f(12)-f(35);
A1(66,71)=f(11);
A1(66,72)=f(25);
A1(67,57)=f(20);
A1(67,67)=-b(6)-b(20)-f(40);
A1(68,60)=f(18);
A1(68,68)=-b(18)-f(19);
A1(68,73)=b(19);
A1(69,64)=b(24);
A1(69,69)=-b(22)-f(23)-f(24);
A1(69,74)=f(22);
A1(69,75)=b(23);
A1(70,65)=f(16);
A1(70,70)=-b(16)-f(17)-f(39);
A1(70,76)=b(17);
A1(71,66)=b(11);
A1(71,71)=-b(9)-b(10)-f(11)-f(21)-f(34);
A1(71,74)=b(21);
A1(72,66)=b(25);
A1(72,72)=-b(27)-f(25)-f(28)-f(38);
A1(72,77)=f(27);
A1(72,78)=b(28);
A1(73,68)=f(19);
A1(73,73)=-b(5)-b(19)-f(20);
A1(73,79)=b(20);
A1(74,69)=b(22);
A1(74,71)=f(21);
A1(74,74)=-b(8)-b(21)-f(22);
A1(75,69)=f(23);
A1(75,75)=-b(7)-b(23)-f(26)-f(37);
A1(75,77)=b(26);
A1(76,70)=f(17);
A1(76,76)=-b(17)-f(18);
A1(76,80)=b(18);
A1(77,72)=b(27);
A1(77,75)=f(26);
A1(77,77)=-b(26)-b(29)-f(27);
A1(77,78)=f(29);
A1(78,72)=f(28);
A1(78,77)=b(29);
A1(78,78)=-b(28)-f(29);
A1(79,73)=f(20);
A1(79,79)=-b(6)-b(20)-f(40);
A1(80,76)=f(18);
A1(80,80)=-b(18)-f(19);
A1(80,81)=b(19);
A1(81,80)=f(19);
A1(81,81)=-b(5)-b(19)-f(20);
A1(81,82)=b(20);
A1(82,81)=f(20);
A1(82,82)=-b(6)-b(20)-f(40);

B1=zeros(82,30);
B1(1,1)=-f(1);
B1(9,2)=-f(7);
B1(11,3)=-f(8);
B1(12,4)=-f(9);
B1(12,5)=-f(10);
B1(17,6)=-f(9);
B1(17,7)=-f(10);
B1(22,8)=-f(8);
B1(24,9)=-f(9);
B1(24,10)=-f(10);
B1(25,11)=-f(8);
B1(30,12)=-f(7);
B1(36,13)=-f(9);
B1(36,14)=-f(10);
B1(41,15)=-f(8);
B1(42,16)=-f(7);
B1(54,17)=-f(9);
B1(54,18)=-f(10);
B1(57,19)=-f(5);
B1(58,20)=-f(8);
B1(59,21)=-f(7);
B1(67,22)=-f(6);
B1(71,23)=-f(9);
B1(71,24)=-f(10);
B1(73,25)=-f(5);
B1(74,26)=-f(8);
B1(75,27)=-f(7);
B1(79,28)=-f(6);
B1(81,29)=-f(5);
B1(82,30)=-f(6);

y1=[ in.CO2_IN_1; in.RIBOSE_IN_1; in.GLUCONATE_IN_1; in.GLC_IN_3; in.GLYCOGEN_IN_3; in.GLC_IN_2; in.GLYCOGEN_IN_2; in.GLUCONATE_IN_2; in.GLC_IN_1; in.GLYCOGEN_IN_1; in.GLUCONATE_IN_3; in.RIBOSE_IN_2; in.GLC_IN_4; in.GLYCOGEN_IN_4; in.GLUCONATE_IN_4; in.RIBOSE_IN_3; in.GLC_IN_5; in.GLYCOGEN_IN_5; in.PEP_IN_1; in.GLUCONATE_IN_5; in.RIBOSE_IN_4; in.PYR_IN_1; in.GLC_IN_6; in.GLYCOGEN_IN_6; in.PEP_IN_2; in.GLUCONATE_IN_6; in.RIBOSE_IN_5; in.PYR_IN_2; in.PEP_IN_3; in.PYR_IN_3];
x1=sparse(A1)\(B1*sparse(y1));

%%
A2=zeros(53);
A2(1,1)=-b(24)-f(25)-f(26);
A2(1,2)=b(25);
A2(1,3)=b(26);
A2(1,6)=f(24);
A2(2,1)=f(25);
A2(2,2)=-b(11)-b(25)-b(27)-f(12)-f(35);
A2(2,3)=f(27);
A2(2,7)=f(11);
A2(2,8)=b(12);
A2(3,1)=f(26);
A2(3,2)=b(27);
A2(3,3)=-b(26)-b(29)-f(27);
A2(3,9)=f(29);
A2(4,4)=-b(26)-b(29)-f(27);
A2(4,10)=f(29);
A2(4,11)=b(27);
A2(5,5)=-b(13)-f(14)-f(28)-f(36);
A2(5,10)=b(28);
A2(5,12)=f(13);
A2(5,13)=b(14);
A2(6,1)=b(24);
A2(6,6)=-b(22)-f(23)-f(24);
A2(6,14)=f(22);
A2(6,15)=b(23);
A2(7,2)=b(11);
A2(7,7)=-b(9)-b(10)-f(11)-f(21)-f(34);
A2(7,16)=b(21);
A2(8,2)=f(12);
A2(8,8)=-b(12)-f(13);
A2(8,17)=b(13);
A2(9,3)=b(29);
A2(9,9)=-b(28)-f(29);
A2(9,17)=f(28);
A2(10,4)=b(29);
A2(10,5)=f(28);
A2(10,10)=-b(28)-f(29);
A2(11,4)=f(27);
A2(11,11)=-b(11)-b(25)-b(27)-f(12)-f(35);
A2(11,12)=b(12);
A2(11,18)=f(11);
A2(12,5)=b(13);
A2(12,11)=f(12);
A2(12,12)=-b(12)-f(13);
A2(13,5)=f(14);
A2(13,13)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A2(13,19)=f(13);
A2(13,20)=f(25)+f(26);
A2(13,21)=b(15);
A2(13,22)=b(27);
A2(14,6)=b(22);
A2(14,14)=-b(8)-b(21)-f(22);
A2(14,18)=f(21);
A2(15,6)=f(23);
A2(15,15)=-b(7)-b(23)-f(26)-f(37);
A2(15,23)=b(26);
A2(16,7)=f(21);
A2(16,16)=-b(8)-b(21)-f(22);
A2(17,8)=f(13);
A2(17,9)=b(28);
A2(17,17)=-b(13)-f(14)-f(28)-f(36);
A2(17,24)=b(14);
A2(18,11)=b(11);
A2(18,14)=b(21);
A2(18,18)=-b(9)-b(10)-f(11)-f(21)-f(34);
A2(19,13)=b(13);
A2(19,19)=-b(12)-f(13);
A2(19,22)=f(12);
A2(20,13)=b(25)+b(26);
A2(20,20)=-b(24)-f(25)-f(26);
A2(20,25)=f(24);
A2(21,13)=f(15);
A2(21,21)=-b(15)-f(16);
A2(21,26)=b(16);
A2(22,13)=f(27);
A2(22,19)=b(12);
A2(22,22)=-b(11)-b(25)-b(27)-f(12)-f(35);
A2(22,27)=f(11);
A2(22,28)=f(25);
A2(23,15)=f(26);
A2(23,23)=-b(26)-b(29)-f(27);
A2(23,29)=f(29);
A2(24,17)=f(14);
A2(24,24)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A2(24,30)=f(13);
A2(24,31)=f(25)+f(26);
A2(24,32)=b(15);
A2(24,33)=b(27);
A2(25,20)=b(24);
A2(25,25)=-b(22)-f(23)-f(24);
A2(25,34)=f(22);
A2(25,35)=b(23);
A2(26,21)=f(16);
A2(26,26)=-b(16)-f(17)-f(39);
A2(26,36)=b(17);
A2(27,22)=b(11);
A2(27,27)=-b(9)-b(10)-f(11)-f(21)-f(34);
A2(27,34)=b(21);
A2(28,22)=b(25);
A2(28,28)=-b(27)-f(25)-f(28)-f(38);
A2(28,37)=f(27);
A2(28,38)=b(28);
A2(29,23)=b(29);
A2(29,29)=-b(28)-f(29);
A2(30,24)=b(13);
A2(30,30)=-b(12)-f(13);
A2(30,33)=f(12);
A2(31,24)=b(25)+b(26);
A2(31,31)=-b(24)-f(25)-f(26);
A2(31,39)=f(24);
A2(32,24)=f(15);
A2(32,32)=-b(15)-f(16);
A2(32,40)=b(16);
A2(33,24)=f(27);
A2(33,30)=b(12);
A2(33,33)=-b(11)-b(25)-b(27)-f(12)-f(35);
A2(33,41)=f(11);
A2(33,42)=f(25);
A2(34,25)=b(22);
A2(34,27)=f(21);
A2(34,34)=-b(8)-b(21)-f(22);
A2(35,25)=f(23);
A2(35,35)=-b(7)-b(23)-f(26)-f(37);
A2(35,37)=b(26);
A2(36,26)=f(17);
A2(36,36)=-b(17)-f(18);
A2(36,43)=b(18);
A2(37,28)=b(27);
A2(37,35)=f(26);
A2(37,37)=-b(26)-b(29)-f(27);
A2(37,38)=f(29);
A2(38,28)=f(28);
A2(38,37)=b(29);
A2(38,38)=-b(28)-f(29);
A2(39,31)=b(24);
A2(39,39)=-b(22)-f(23)-f(24);
A2(39,44)=f(22);
A2(39,45)=b(23);
A2(40,32)=f(16);
A2(40,40)=-b(16)-f(17)-f(39);
A2(40,46)=b(17);
A2(41,33)=b(11);
A2(41,41)=-b(9)-b(10)-f(11)-f(21)-f(34);
A2(41,44)=b(21);
A2(42,33)=b(25);
A2(42,42)=-b(27)-f(25)-f(28)-f(38);
A2(42,47)=f(27);
A2(42,48)=b(28);
A2(43,36)=f(18);
A2(43,43)=-b(18)-f(19);
A2(43,49)=b(19);
A2(44,39)=b(22);
A2(44,41)=f(21);
A2(44,44)=-b(8)-b(21)-f(22);
A2(45,39)=f(23);
A2(45,45)=-b(7)-b(23)-f(26)-f(37);
A2(45,47)=b(26);
A2(46,40)=f(17);
A2(46,46)=-b(17)-f(18);
A2(46,50)=b(18);
A2(47,42)=b(27);
A2(47,45)=f(26);
A2(47,47)=-b(26)-b(29)-f(27);
A2(47,48)=f(29);
A2(48,42)=f(28);
A2(48,47)=b(29);
A2(48,48)=-b(28)-f(29);
A2(49,43)=f(19);
A2(49,49)=-b(5)-b(19)-f(20);
A2(49,51)=b(20);
A2(50,46)=f(18);
A2(50,50)=-b(18)-f(19);
A2(50,52)=b(19);
A2(51,49)=f(20);
A2(51,51)=-b(6)-b(20)-f(40);
A2(52,50)=f(19);
A2(52,52)=-b(5)-b(19)-f(20);
A2(52,53)=b(20);
A2(53,52)=f(20);
A2(53,53)=-b(6)-b(20)-f(40);

B2=zeros(53,24);
B2(4,1)=-f(26);
B2(7,3)=-f(9);
B2(7,4)=-f(10);
B2(11,2)=-f(25);
B2(14,6)=-f(8);
B2(15,7)=-f(7);
B2(16,5)=-b(22);
B2(16,9)=-f(8);
B2(18,10)=-f(9);
B2(18,11)=-f(10);
B2(23,8)=-b(27);
B2(27,13)=-f(9);
B2(27,14)=-f(10);
B2(29,12)=-f(28);
B2(34,15)=-f(8);
B2(35,16)=-f(7);
B2(41,17)=-f(9);
B2(41,18)=-f(10);
B2(44,19)=-f(8);
B2(45,20)=-f(7);
B2(49,21)=-f(5);
B2(51,22)=-f(6);
B2(52,23)=-f(5);
B2(53,24)=-f(6);

y2=[ cauchy(x1(4,:),x1(9,:)); cauchy(x1(4,:),x1(8,:)); in.GLC_IN_1_2; in.GLYCOGEN_IN_1_2; cauchy(x1(1,:),x1(10,:)); in.GLUCONATE_IN_2_3; in.RIBOSE_IN_1_2; cauchy(x1(2,:),x1(8,:)); in.GLUCONATE_IN_1_2; in.GLC_IN_2_3; in.GLYCOGEN_IN_2_3; cauchy(x1(3,:),x1(8,:)); in.GLC_IN_4_5; in.GLYCOGEN_IN_4_5; in.GLUCONATE_IN_4_5; in.RIBOSE_IN_3_4; in.GLC_IN_5_6; in.GLYCOGEN_IN_5_6; in.GLUCONATE_IN_5_6; in.RIBOSE_IN_4_5; in.PEP_IN_1_2; in.PYR_IN_1_2; in.PEP_IN_2_3; in.PYR_IN_2_3];
x2=sparse(A2)\(B2*sparse(y2));

%%
A3=zeros(24);
A3(1,1)=-b(13)-b(14)-b(25)-b(26)-f(15)-f(27);
A3(1,2)=f(14);
A3(1,3)=b(15);
A3(1,11)=f(13);
A3(1,12)=f(25)+f(26);
A3(1,13)=b(27);
A3(2,1)=b(14);
A3(2,2)=-b(13)-f(14)-f(28)-f(36);
A3(2,14)=f(13);
A3(2,15)=b(28);
A3(3,1)=f(15);
A3(3,3)=-b(15)-f(16);
A3(3,4)=b(16);
A3(4,3)=f(16);
A3(4,4)=-b(16)-f(17)-f(39);
A3(4,5)=b(17);
A3(5,4)=f(17);
A3(5,5)=-b(17)-f(18);
A3(5,6)=b(18);
A3(6,5)=f(18);
A3(6,6)=-b(18)-f(19);
A3(6,7)=b(19);
A3(7,6)=f(19);
A3(7,7)=-b(5)-b(19)-f(20);
A3(7,8)=b(20);
A3(8,7)=f(20);
A3(8,8)=-b(6)-b(20)-f(40);
A3(9,9)=-b(11)-b(25)-b(27)-f(12)-f(35);
A3(9,10)=f(27);
A3(9,14)=b(12);
A3(9,16)=f(11);
A3(10,9)=b(27);
A3(10,10)=-b(26)-b(29)-f(27);
A3(10,15)=f(29);
A3(11,1)=b(13);
A3(11,11)=-b(12)-f(13);
A3(11,13)=f(12);
A3(12,1)=b(25)+b(26);
A3(12,12)=-b(24)-f(25)-f(26);
A3(12,17)=f(24);
A3(13,1)=f(27);
A3(13,11)=b(12);
A3(13,13)=-b(11)-b(25)-b(27)-f(12)-f(35);
A3(13,18)=f(11);
A3(13,19)=f(25);
A3(14,2)=b(13);
A3(14,9)=f(12);
A3(14,14)=-b(12)-f(13);
A3(15,2)=f(28);
A3(15,10)=b(29);
A3(15,15)=-b(28)-f(29);
A3(16,9)=b(11);
A3(16,16)=-b(9)-b(10)-f(11)-f(21)-f(34);
A3(16,20)=b(21);
A3(17,12)=b(24);
A3(17,17)=-b(22)-f(23)-f(24);
A3(17,21)=f(22);
A3(17,22)=b(23);
A3(18,13)=b(11);
A3(18,18)=-b(9)-b(10)-f(11)-f(21)-f(34);
A3(18,21)=b(21);
A3(19,13)=b(25);
A3(19,19)=-b(27)-f(25)-f(28)-f(38);
A3(19,23)=f(27);
A3(19,24)=b(28);
A3(20,16)=f(21);
A3(20,20)=-b(8)-b(21)-f(22);
A3(21,17)=b(22);
A3(21,18)=f(21);
A3(21,21)=-b(8)-b(21)-f(22);
A3(22,17)=f(23);
A3(22,22)=-b(7)-b(23)-f(26)-f(37);
A3(22,23)=b(26);
A3(23,19)=b(27);
A3(23,22)=f(26);
A3(23,23)=-b(26)-b(29)-f(27);
A3(23,24)=f(29);
A3(24,19)=f(28);
A3(24,23)=b(29);
A3(24,24)=-b(28)-f(29);

B3=zeros(24,12);
B3(7,3)=-f(5);
B3(8,4)=-f(6);
B3(9,1)=-f(25);
B3(10,2)=-f(26);
B3(16,5)=-f(9);
B3(16,6)=-f(10);
B3(18,8)=-f(9);
B3(18,9)=-f(10);
B3(20,7)=-b(22);
B3(20,10)=-f(8);
B3(21,11)=-f(8);
B3(22,12)=-f(7);

y3=[ cauchy(x2(1,:),x1(8,:)); cauchy(x2(1,:),x1(9,:)); in.PEP_IN_1_2_3; in.PYR_IN_1_2_3; in.GLC_IN_1_2_3; in.GLYCOGEN_IN_1_2_3; cauchy(x1(1,:),x2(6,:)); in.GLC_IN_4_5_6; in.GLYCOGEN_IN_4_5_6; in.GLUCONATE_IN_1_2_3; in.GLUCONATE_IN_4_5_6; in.RIBOSE_IN_3_4_5];
x3=sparse(A3)\(B3*sparse(y3));

%%
A4=zeros(10);
A4(1,1)=-b(27)-f(25)-f(28)-f(38);
A4(1,2)=f(27);
A4(1,3)=b(25);
A4(1,4)=b(28);
A4(2,1)=b(27);
A4(2,2)=-b(26)-b(29)-f(27);
A4(2,4)=f(29);
A4(2,5)=f(26);
A4(3,1)=f(25);
A4(3,3)=-b(11)-b(25)-b(27)-f(12)-f(35);
A4(3,6)=f(11);
A4(3,7)=b(12);
A4(4,1)=f(28);
A4(4,2)=b(29);
A4(4,4)=-b(28)-f(29);
A4(5,2)=b(26);
A4(5,5)=-b(7)-b(23)-f(26)-f(37);
A4(5,8)=f(23);
A4(6,3)=b(11);
A4(6,6)=-b(9)-b(10)-f(11)-f(21)-f(34);
A4(6,9)=b(21);
A4(7,3)=f(12);
A4(7,7)=-b(12)-f(13);
A4(8,5)=b(23);
A4(8,8)=-b(22)-f(23)-f(24);
A4(8,9)=f(22);
A4(8,10)=b(24);
A4(9,6)=f(21);
A4(9,8)=b(22);
A4(9,9)=-b(8)-b(21)-f(22);
A4(10,8)=f(24);
A4(10,10)=-b(24)-f(25)-f(26);

B4=zeros(10,8);
B4(3,1)=-f(27);
B4(5,3)=-f(7);
B4(6,4)=-f(9);
B4(6,5)=-f(10);
B4(7,2)=-b(13);
B4(9,8)=-f(8);
B4(10,6)=-b(25);
B4(10,7)=-b(26);

y4=[ cauchy(x1(5,:),x3(1,:)); cauchy(x1(3,:),x3(1,:)); in.RIBOSE_IN_2_3_4_5; in.GLC_IN_3_4_5_6; in.GLYCOGEN_IN_3_4_5_6; cauchy(x1(6,:),x3(1,:)); cauchy(x1(7,:),x3(1,:)); in.GLUCONATE_IN_3_4_5_6];
x4=A4\(B4*sparse(y4));

%%
A5=zeros(9);
A5(1,1)=-b(22)-f(23)-f(24);
A5(1,2)=b(23);
A5(1,3)=b(24);
A5(1,4)=f(22);
A5(2,1)=f(23);
A5(2,2)=-b(7)-b(23)-f(26)-f(37);
A5(2,5)=b(26);
A5(3,1)=f(24);
A5(3,3)=-b(24)-f(25)-f(26);
A5(4,1)=b(22);
A5(4,4)=-b(8)-b(21)-f(22);
A5(4,6)=f(21);
A5(5,2)=f(26);
A5(5,5)=-b(26)-b(29)-f(27);
A5(5,7)=f(29);
A5(6,4)=b(21);
A5(6,6)=-b(9)-b(10)-f(11)-f(21)-f(34);
A5(6,8)=b(11);
A5(7,5)=b(29);
A5(7,7)=-b(28)-f(29);
A5(8,6)=f(11);
A5(8,8)=-b(11)-b(25)-b(27)-f(12)-f(35);
A5(8,9)=b(12);
A5(9,8)=f(12);
A5(9,9)=-b(12)-f(13);

B5=zeros(9,11);
B5(2,3)=-f(7);
B5(3,1)=-b(25);
B5(3,2)=-b(26);
B5(4,5)=-f(8);
B5(5,4)=-b(27);
B5(6,7)=-f(9);
B5(6,8)=-f(10);
B5(7,6)=-f(28);
B5(8,9)=-f(25);
B5(8,10)=-f(27);
B5(9,11)=-b(13);

y5=[ cauchy(x2(2,:),x3(1,:)); cauchy(x2(3,:),x3(1,:)); in.RIBOSE_IN_1_2_3_4_5; cauchy(x1(2,:),x4(1,:)); in.GLUCONATE_IN_2_3_4_5_6; cauchy(x1(3,:),x4(1,:)); in.GLC_IN_2_3_4_5_6; in.GLYCOGEN_IN_2_3_4_5_6; cauchy(x1(4,:),x4(1,:)); cauchy(x2(4,:),x3(1,:)); cauchy(x2(5,:),x3(1,:))];
x5=A5\(B5*sparse(y5));

%%
A6=zeros(4);
A6(1,1)=-b(9)-b(10)-f(11)-f(21)-f(34);
A6(1,2)=b(11);
A6(1,4)=b(21);
A6(2,1)=f(11);
A6(2,2)=-b(11)-b(25)-b(27)-f(12)-f(35);
A6(2,3)=b(12);
A6(3,2)=f(12);
A6(3,3)=-b(12)-f(13);
A6(4,1)=f(21);
A6(4,4)=-b(8)-b(21)-f(22);

B6=zeros(4,7);
B6(1,5)=-f(9);
B6(1,6)=-f(10);
B6(2,1)=-f(25);
B6(2,2)=-f(27);
B6(3,3)=-b(13);
B6(4,4)=-b(22);
B6(4,7)=-f(8);

y6=[ cauchy(x2(1,:),x4(1,:)); cauchy(x3(10,:),x3(1,:)); cauchy(x3(2,:),x3(1,:)); cauchy(x1(1,:),x5(1,:)); in.GLC_IN_1_2_3_4_5_6; in.GLYCOGEN_IN_1_2_3_4_5_6; in.GLUCONATE_IN_1_2_3_4_5_6];
x6=A6\(B6*sparse(y6));

%%
A7=zeros(2);
A7(1,1)=-b(26)-b(29)-f(27);
A7(1,2)=f(29);
A7(2,1)=b(29);
A7(2,2)=-b(28)-f(29);

B7=zeros(2,3);
B7(1,1)=-f(26);
B7(1,2)=-b(27);
B7(2,3)=-f(28);

y7=[ cauchy(x2(1,:),x5(2,:)); cauchy(x3(9,:),x4(1,:)); cauchy(x3(2,:),x4(1,:))];
x7=A7\(B7*sparse(y7));

%%
mol.g6p=x6(1,:);
mol.f6p=x6(2,:);
mol.fbp=x6(3,:);
mol.gap=x3(1,:);
mol.dhap=x3(2,:);
mol.bpg13=x3(3,:);
mol.pg3=x3(4,:);
mol.bpg23=x3(5,:);
mol.pg2=x3(6,:);
mol.pep=x3(7,:);
mol.pyr=x3(8,:);
mol.pg6=x6(4,:);
mol.ru5p=x5(1,:);
mol.r5p=x5(2,:);
mol.xu5p=x5(3,:);
mol.s7p=x7(1,:);
mol.sbp=x7(2,:);
mol.e4p=x4(1,:);
mol.CO2=x1(1,:);