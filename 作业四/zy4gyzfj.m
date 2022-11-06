%% 作业4附加题
% 绘制三维曲线曲面图，数据自拟

close all;clear;clc;

[X,Y] = meshgrid([-25:0.5:25]);     % 数据准备
Z = X.^4 + 50*Y.^3 + log(X*Y).^4;   % 方程
figure
contour3(X, Y, Z, 30, 'k');         % 绘制三维空间等高线图
title('三维空间等高线图')

[X,Y] = meshgrid([-30:0.6:30]);
Z2 = sin(X).*cos(Y).^2 + X.^3 + 0.9*Y.^3 ;
figure
waterfall(X,Y,Z2)
title()
colormap green








