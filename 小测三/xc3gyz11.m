%% 	1. x范围自拟,y=sin2x+2xcosx,用plot(x,y,s,sn)
% 绘图,要求:红色实线,线宽3,正五边形点[大小8,边绿色,内部黄色]
% 并标注:标题、xy轴.

close all; clear; clc;
x = 0:0.5:50;
y = sin(2*x) + 2*x.*cos(x)
plot(x,y,'r-p','LineWidth',3,'MarkerSize',8,'MarkerEdgeColor','g','MarkerFaceColor','r')
title('y=sin2x+2xcos 的曲线')
xlabel('x')
ylabel('sin2x+2xcosx')


