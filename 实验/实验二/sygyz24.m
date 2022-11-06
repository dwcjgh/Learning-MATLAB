%{
4、绘制长轴为a、短轴为b的椭圆，ab自定义。采用多子图表现图形形状不仅受“控制指令”
影响，而且受整个图面“宽高比”及“子图数目”的影响。【6个子图前三个开网格，后三个显
示常规的横坐标；坐标轴依次是Normal、Equal、Square、Image、Image Fill、Tight；
题头显示坐标轴和网格情况】【尽可能把所学标注使用上并显示出来】。
%}
close all;clear;clc

%
subplot(2,3,1)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis normal
ylabel("x^2/36+y^2/25 = 1")
title('有网格线，坐标轴 normal')
%
subplot(2,3,2)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis equal
ylabel("x^2/36+y^2/25 = 1")
title('有网格线，坐标轴 equal')
%
subplot(2,3,3)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis square
ylabel("x^2/36+y^2/25 = 1")
title('有网格线，坐标轴 square')
%
subplot(2,3,4)
ezplot('x^2/36+y^2/25 - 1')
axis image
legend('x^2/36+y^2/25 = 1')
title('显示常规的横坐标，坐标轴 image')
%
subplot(2,3,5)
ezplot('x^2/36+y^2/25 - 1')
axis image fill
legend('x^2/36+y^2/25 = 1')
title('显示常规的横坐标，坐标轴 image fill')
%
subplot(2,3,6)
ezplot('x^2/36+y^2/25 - 1')
axis tight
legend('x^2/36+y^2/25 = 1')
title('显示常规的横坐标，坐标轴 tight')
