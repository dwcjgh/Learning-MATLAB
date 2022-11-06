%% 作业六
% 4、对航概升阻力曲线图2-56进行数据采样，并对升力、阻力、升阻比进行插值和多项式拟合。
% 迎角α       -2      2       4       6       10      14      20      24      28
% 升力系数C_y   -0.1    0.2     0.35    0.5     0.8     1.06    1.4     1.29    1.1
% 阻力系数C_x   0.01    0.01    0.015   0.035   0.05    0.08    0.15    0.26    0.375
% 升阻比K      -7      11      20.8    20      17      13      9       5       3

close all;clear;clc;
alpha = [-2, 2, 4, 6, 10, 14, 20, 24, 28];

C_y = [-0.1, 0.2, 0.35, 0.5, 0.8, 1.06, 1.4, 1.29, 1.1];
C_x = [0.01, 0.01, 0.015, 0.035, 0.05, 0.08, 0.15, 0.26, 0.375];
K = [-7, 11, 20.8, 20, 17, 13, 9, 5, 3];
xi = -2:0.20:28;


% 命名：C=插值 Cy=C_y
CCy= interp1(alpha, C_y,xi,'cubic')    % 双三次插值

subplot(2,3,1)
plot(alpha,C_y,'bo',xi,CCy)
grid on
xlabel('升力系数插值')

CCx = interp1(alpha, C_x,xi,'pchip')    % 分段三次hermite插值
subplot(2,3,2)
plot(alpha,C_x,'bo',xi,CCx)
grid on
xlabel('阻力系数插值')

CyK = interp1(alpha, K,xi,'spline') % 一维样条插值
subplot(2,3,3)
plot(alpha,K,'bo',xi,CyK)
grid on
xlabel('升阻比插值')

% 拟合
NCy = polyfit(alpha, C_y, 6);
y1 = polyval(NCy, xi);
subplot(2,3,4)
plot(alpha,C_y,'o',xi,y1)
grid on     % 在画图的时候添加网格线
title('升力曲线拟合')

NCx = polyfit(alpha, C_x, 6);
y2 = polyval(NCx, xi);
subplot(2,3,5)
plot(alpha,C_x,'o',xi,y2)
grid on     % 在画图的时候添加网格线
title('阻力曲线拟合')

NK = polyfit(alpha, K, 6);
y3 = polyval(NK, xi);
subplot(2,3,6)
plot(alpha,K,'o',xi,y3)
grid on     % 在画图的时候添加网格线
title('升阻比曲线拟合')







