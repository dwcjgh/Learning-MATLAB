% 4、数值微积分计算：
close all;clear;clc;
% 1)x∈[0,1]步长0.2，用diff求f1 = xsin(x),f2 = xtan(x)+x^2求近似微分df1,df2。
x = 0:0.2:1;
f1 = x.*sin(x);
f2 = x.*tan(x)+x.^2;
df1 = diff(f1)  % diff(X) 返回长度为 m-1 的向量。Y 的元素是 X 相邻元素之间的差分。
df2 = diff(f2)
% 2)用dblquad求定积分
f3 = @(x,y) x.*exp(-x.*y);
f4 = @(x,y) y.*cos(x)+exp(-x.*y);
ff3 = dblquad(f3,0,1,0,1)
ff4 = dblquad(f4,0,pi,2,5)
%{
q = dblquad(fun,xmin,xmax,ymin,ymax) 
调用 quad 函数来计算 xmin <= x <= xmax，ymin <= y <= ymax 
矩形区域上的二重积分 fun(x,y)。输入参数 fun 是一个函数句柄，
它接受向量 x，标量 y，并返回被积函数值的向量。
%}
% 3）定义符号方程f5 = ax2+bx+c，f6 = sin(x)/x，
syms x y a b c
f5 = a*x.^2 + b*x + c;
f6 = sin(x)./x;
% f5分别对x，a求根存于A1,A2， 
A1 = solve(f5,x)
A2 = solve(f5,a)
% f6在x = 0处的极限存于A3，
A3 = limit(f6,x,0)
% 求f5,f6对x的二重不定积分存于A4,A5，
A4 = int(int(f5,x),x)
A5 = int(int(f6,x),x)
% 求f5对x的2次微分存于A6，
A6 = diff(f5,2)
% 求f6对x的5次微分存于A7。
A7 = diff(f6,5)
