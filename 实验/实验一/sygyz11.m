% 1、向量矩阵的生成及基本运算。 [提交M文件：**11.m，只记录1)和2)的命令和结果]
clc;clear;close all;
% 1)自定义长、宽、高、半径，求长方体、圆柱、圆锥的表面积和体积。
long = 10; wide = 8; h = 15; r = 5;
% =====长方体=====
s1 = (long.*wide + long.*h + wide.*h)*2;
v1 = long.*wide.*h;
disp('=====长方体=====')
disp(['长：',num2str(long),'  宽：',num2str(wide),'  高：',num2str(h)])
disp(['表面积：',num2str(s1),'  体积：',num2str(v1)])
% =====圆柱=====
s2 = 2*pi*r.^2 + 2*pi*r.*h;
v2 = pi*r.^2.*h;
disp('=====圆柱=====')
disp(['半径：',num2str(r),'  高：',num2str(h)])
disp(['表面积：',num2str(s2),'  体积：',num2str(v2)])
% =====圆锥=====
s3 = pi*r.^2 + pi*r.*sqrt(r.^2 + h.^2); % S锥=πr²+πrl（其中l=母线）
v3 = 1/3*pi*r.^2.*h;
disp('=====圆锥=====')
disp(['半径：',num2str(r),'  高：',num2str(h)])
disp(['表面积：',num2str(s3),'  体积：',num2str(v3)])

% 2)自定义x，y的值，求z1=xy/(x-y)^4。z2=x^2 y^3/(x^2-y)^3。z3=x^2 y^3/(x^2-y^2)^2。
x = 8;
y = 12;
z1 = x.*y./(x-y).^4
z2 = x.^2.*y.^3./(x.^2-y).^3
z3 = x.^2.*y.^3./(x.^2-y.^2).^2

% 3)用magic、zeros、ones生成4*4的矩阵A1,A2,A3。
A1 = magic(4)
A2 = zeros(4)
A3 = ones(4)

% 4)用rand、randn、diag命令分别生成1*5的一维数组、4*3的二维数组。
rand(1,5)
rand(4,3)
randn(1,5)
randn(4,3)
A = diag([12,-5,6,0]);
B = A(:,1:3) 
