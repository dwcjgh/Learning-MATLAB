%% 自定义x1,yl,x2,y2在同一图中用
% plot(x1,yl,s1,x2,y2,s2,sn(1))绘图,要求(x1,y1)
% 蓝色虚线圆点,(x2,y2)绿色点划线右三角,线宽4.
% 并标注:标题、图例、xy轴.

close all; clear; clc;
x1 = 0:0.2:15;
x2 = 5:0.2:20;
y1 = (sin(x1)).^2;
y2 = (cos(x2)).^3;
plot(x1,y1,'--ob',x2,y2,'g-.>','LineWidth',4)
title('(sin(x))^2和(cos(x))^3图形曲线')
xlabel('x')
ylabel('y')
legend('(sin(x))^2','(cos(x))^3')