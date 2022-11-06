%% 弦截法求解求非线性方程e^x=4cosx在初值x0=-π/4附近的根，保留4位有效数字。
% 郭永峥 2022-9-9 23:00:28

close all; clear; clc;
x1=1;
x2=pi/4; 
for i=1:10 
    i
    y = x2-(exp(x2)-4*cos(x2))*(x2-x1)/(exp(x2)-4*cos(x2)-exp(x1)+4*cos(x1))
    x1=x2;
    x2=y;
end