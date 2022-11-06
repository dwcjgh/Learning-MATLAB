%% 2、自定义2个关于x1，x2的函数yl，y2，用plot绘制[-2，2]上的曲线
% 1）曲线1，2为黄实线、绿虚线，数据点为菱形【自定义sn】（图1）
% 2）曲线1，2的s自定义，数据点为圆形其中sn自定义（图2）；
% 3）对图2曲线进行标注（图3）

close all; clear; clc;
x1 = -2:0.1:2;
x2 = -2:0.1:2;
y1 = (x1 + sqrt(x2.^2+1)).^4;
y2 = (exp(x1)-exp(-x2)).^3;

figure
plot(x1,y1,'y-d',x2,y2,'g--d','LineWidth',3,'Markersize',2)
title('图一')

figure
plot(x1,y1,'r-.o',x2,y2,'b-','LineWidth',4,'MarkerFaceColor','g','MarkerEdgeColor','y')
title('图二')

figure
plot(x1,y1,'r-.o',x2,y2,'b-','LineWidth',4,'MarkerFaceColor','g','MarkerEdgeColor','y')
title('图三')
legend('(x1 + sqrt(x2^2+1))^4','(exp(x1)-exp(-x2))^3')

