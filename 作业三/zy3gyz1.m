%% 1、自定义3个关于x的函数y1、y2、y3，用plot绘制[-2，2]上的曲线
% 1）曲线1，2，3为红实线、绿实线、黑虚线（图1）
% 2）将在x轴范围重新限定在[-3，3]上，同时y轴范围限定在[-1.5，1.5]上（图2）；
% 3）将图2上开网格（图3）
% 4）对曲线1，2，3进行标注（图4）。

close all; clear; clc;
x = -2:0.01:2;
y1 = (sin(x)).^2;
y2 = (sin(x)).^2 + cos(x);
y3 = (sin(x)).^3 + (cos(x)).^3;
% 图一
figure % 绘图
plot(x,y1,'r-',x,y2,'g-',x,y3,'k--')
title('图一')

% 函数axis()，该函数的作用是控制坐标轴的刻度范围及显示形式,教材P89，例3-29，PPT37
figure % 绘图
plot(x,y1,'r-',x,y2,'g-',x,y3,'k--')
axis([-3, 3, -1.5, 1.5])
title('图二')

figure % 绘图
plot(x,y1,'r-',x,y2,'g-',x,y3,'k--')
axis([-3, 3, -1.5, 1.5])
grid on % 加网格线
title('图三')

figure % 绘图
plot(x,y1,'r-',x,y2,'g-',x,y3,'k--')
axis([-3, 3, -1.5, 1.5])
axis auto % 恢复坐标轴设置
title('图四')
xlabel('x')
ylabel('y')
legend('y = (sin(x))^2','y = (sin(x))^2 + cos(x)','y = (sin(x))^3 + (cos(x))^3')
% gteat 鼠标放置文本，不方便
% gtext('y = (sin(x))^2')
% gtext('y = (sin(x))^2 + cos(x)')
% gtext('y = (sin(x))^3 + (cos(x))^3')





