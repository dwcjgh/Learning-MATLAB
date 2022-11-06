%% 作业四
% 1、自定义4个函数，并用 fplot 绘图，每个图形在 subplot 中单独显示。
% 【高数函数表达式】
% 2、自定义6个函数，并用 ezplot 绘图，每个图形在 subplot 中单独显示。
% 【高数隐函数】
% 3、自定义一个7维向量，并用4种特殊二维绘图函数绘图，每个图形在 subplot 中单独显示。
% 4、自定义(x，y)，用 mesh，surf 三维绘图函数绘制三维图，每个图形单独显示。

close all;clear;clc;

% y = (e^x-e^-x)/sinx
subplot(2,2,1)
y1 = @(x)(exp(x)-exp(-x))/sin(x);       % 上册P137
fplot(y1,[2,10],'r')

% y = (x/(x.^2-1)-1/(x-1))
subplot(2,2,2)
y2 = @(x)(x/(x.^2-1)-1/(x-1));          % 上册P137 
fplot(y2,'g')

subplot(2,2,3)
y3 = @(x)(log(tan(7*x)))/(log(tan(2*x)));   % 上册P137 
fplot(y3,[-0.1,1]);

subplot(2,2,4)
y4 = @(x)x^(sin(x));
fplot(y4,[0,50],'k')



