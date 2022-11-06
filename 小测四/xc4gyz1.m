%% plotyy()函数绘制图x区间自拟，
% 1、曲线参考：y1=e.^-(0.5x)sin(πx)和y2=2e^(-0.5x)sin(x)。

% 本文件只有第一小题，第二小题见下一个 .m 文件

close all; clear; clc;
x = 0:0.01:20;
y1 = exp(-(0.5*x)).*sin(x*pi);
y2 = 2*exp((-0.5*x)).*sin(x);
plotyy(x,y1,x,y2)
title('y1=exp(-(0.5x))*sin(πx)和y2=2exp((-0.5x))*sin(x)')
