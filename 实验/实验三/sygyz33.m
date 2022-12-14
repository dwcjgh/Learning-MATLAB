% 3、参考本专业课程，自定义4个4元以上解线性方程组并求解，自定义2个3次以上微分方并求解。
% 自定义4个4元以上解线性方程组并求解
close all;clear;clc
A1 = [2, -1, -1, 1; 1, 1, -2, 1; 4, -6, 1, -3; 3, 6, -9, 6];
b1 = [1; 1; -17; 12];
x = A1\b1
A2 = [4, 2, 6, 2; 2, 6, 8, 1; 6, 8, 18, 7; 1, 4, 3, 2];
b2 = [10; 5; 13; 7];
x = A2\b2
A3 = [4,8,5,6,5; 1,5,6,3,10; -6,-5,-8,9,15; 1,0,5,3,12; 4,-9,6,7,13];
b3 = [7; 6; 5; 9; 10];
x = A3\b3
A4 = [4,4,-6,5,20; 7,6,3,8,6; -3,4,2,7,4; 3,-8,9,2,3; 1,6,5,2,3];
b4 = [3; 5; 6; -5; 13];
x = A4\b4
% 自定义2个3次以上微分方并求解
y1 = dsolve('2*D3y + 2*y + 8', 'y(0) = 1, Dy(0) = 0, D2y(0) = -5','x')
y2 = dsolve('5*D4y + 3*D2y + 8','y(0) = 5,Dy(0) = 1,D2y(0) = 0,D3y(0) = 10','x')


