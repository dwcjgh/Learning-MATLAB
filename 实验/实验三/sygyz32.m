% 2、已知6次多项式y1，3次多项式y2【自定义】，
close all;clear;clc;
% 1）求两个多项式的和、差、积、商、余数，并保存其多项式形式到矩阵A中，
y1 = [4,5,9,-3,5,0,1];
y2 = [0,0,0,6,-9,4,1];
plus = y1 + y2;
minus = y1 - y2;
y2 = [6,-9,4,1];        % 后续操作第一位不能为 0，重新定义
multi = conv(y1,y2);
[Q,R] = deconv(y1,y2);
He = poly2sym(plus);
Cha = poly2sym(minus);
Ji = poly2sym(multi);
Shang = poly2sym(Q);
Yu = poly2sym(R);
A = [He;Cha;Ji;Shang;Yu]
% 2）对y1，y2，A进行二重微分，并保存其多项式形式到矩阵B中，
Dy1 = diff(y1,2);
Dy2 = diff(y2,2);
DA = diff(A,2);
DY1 = poly2sym(Dy1);
DY2 = poly2sym(Dy2);
B = [DY1;DY2;DA]
% 3）然后求B中多项式在x = -2,0,2的值，并存到矩阵C中。
B_f2 = subs(B,-2);
B_0 = subs(B,0);
B_2 = subs(B,2);
C = [B_f2,B_0,B_2]

