%% 作业四
% 4、自定义(x，y)，用 mesh，surf 三维绘图函数绘制三维图，每个图形单独显示。

close all;clear;clc;

[x,y]=meshgrid(-50:50);
z = (x.^2)/20 + (y.^2)/50;
figure
mesh(x,y,z)     % 绘制三维网格图
title('三维网格图：椭圆抛物面')

figure
xi = -100:100;
yi = -100:100;
[x,y]=meshgrid(xi,yi);
z = (x.^4 + x.*y.^3 + y.*x.^3)/2;
surf(x,y,z)     % 绘制三维表面图
title('三维表面图')




