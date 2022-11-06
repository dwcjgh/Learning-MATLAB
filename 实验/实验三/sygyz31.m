% 已知多项式y1,y2的系数为p1,p2【自定义，注意满足后面的计算能实现】
close all;clear;clc
y1 = [9,8,1,-6,3];
y2 = [-4,5,4,6];
% 1）显示y1,y2；
Y1 = poly2sym(y1)
Y2 = poly2sym(y2)
% 2）求两个多项式相除的商yq和余数yr并显示；
[yq,yr] = deconv(y1,y2);
YQ = poly2sym(yq)
YR = poly2sym(yr)
% 3）求yq商在x = -2,0,2,9处的值A；
A1 = polyval(yq,-2)
A2 = polyval(yq,0)
A3 = polyval(yq,2) 
A4 = polyval(yq,9) 
% 4）然后求yr余数的根B。
B = roots(yr)


