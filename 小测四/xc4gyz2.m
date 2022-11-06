%% plotyy()函数绘制图x区间自拟，
% 1、曲线参考：y1=e.^-(0.5x)sin(πx)和y2=2e^(-0.5x)sin(x)。
% 2、曲线y=e^x，任选3种绘图不同绘图方式比较区别和联系
% 【A.'plot'，'semilogy'   B.'bar'，'semilogy'
% C.'stem'，'semilogy'    D.'stairs'，'semilogy'】

close all; clear; clc;
% A.'plot'，'semilogy'
x = 0:0.19:20;
y = exp(x);
figure
plotyy(x,y,x,y,@plot,@semilogy)
title('plot 与 semilogy')

% B.'bar'，'semilogy'
figure
plotyy(x,y,x,y,@bar,@semilogy)
title('bar 与 semilogy')

% C.'stem'，'semilogy'
figure
plotyy(x,y,x,y,@stem,@semilogy)
title('stem 与 semilogy')

% D.'stairs'，'semilogy'
figure
plotyy(x,y,x,y,@stairs,@semilogy)
title('stairs 与 semilogy')
