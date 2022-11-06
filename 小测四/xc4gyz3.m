%% plotyy()函数绘制图x区间自拟，
% 3、自定义3个函数分别用fplot()、ezplot()绘图。

close all; clear; clc;
% y1 = sin(x).*(x + sqrt(x.^2+1)).^4;
% y2 = cos(x).*(exp(x)-exp(-x)).^3;
% y3 = 2*x*sin(1/x)-cos(1/x)

subplot(2,3,1)
fplot('sin(x).*(x + sqrt(x.^2+1)).^4',[0,20],'r-^','LineWidth',2)
title('y=sin(x)*(x+sqrt(x^2+1))^4的fplot绘图')

subplot(2,3,2)
fplot('cos(x).*(exp(x)-exp(-x)).^3;',[0,20],'g-^','LineWidth',2)
title('cos(x)*(exp(x)-exp(-x))^3的fplot绘图')

subplot(2,3,3)
% 这个例子中x=0有震荡间断点，考察两函数对震荡区域的绘图
fplot('2*x*sin(1/x)-cos(1/x);',[-20,20],'b-^','LineWidth',2)
title('2*x*sin(1/x)-cos(1/x)的fplot绘图')

subplot(2,3,4)
ezplot('sin(x).*(x + sqrt(x.^2+1)).^4',[0,20])
title('sin(x)*(x+sqrt(x^2+1))^4的ezplol绘图')

subplot(2,3,5)
ezplot('cos(x).*(exp(x)-exp(-x)).^3',[0,20])
title('cos(x)*(exp(x)-exp(-x))^3的ezplol绘图')

subplot(2,3,6)
% 这个例子中x=0有震荡间断点，考察两函数对震荡区域的绘图
ezplot('2*x*sin(1/x)-cos(1/x)',[-20,20])
title('2*x*sin(1/x)-cos(1/x)的ezplot绘图')
