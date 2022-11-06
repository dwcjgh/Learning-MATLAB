%% 作业六

% 2、参考考研高数知识自拟3个函数，分别对其进行微分，积分运算、符号计算。
close all;clear;clc;
syms x a b
y1 = 8* asin(x/4) + x.*sqrt(16-x.^2)/2 + 92; % 经典高数积分的结果，常用图解法求积分
y2 = 1/sqrt(x.^2+16); % 反双曲正弦的导函数
y3 = log(1+x) + atan(x);
y4 = 10*x^4 + 7*x^3 - 179*x^2 + 189*x + 45;

dy1 = diff(y1,x);       % 微分
dy1 = simplify(dy1)     % 我要的结果

sy2 = int(y2,x)         % 积分
ty3 = taylor(y3,x,0)    % 符号运算（泰勒展开）
yy4 = factor(y4,x)      % 符号运算（因式分解）

