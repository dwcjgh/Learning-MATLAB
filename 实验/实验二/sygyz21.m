% 1、x∈[0,3π]，k=0.5：0.1：1，自定义绘图步长，绘制y=kcosx。
% 用图例加以区别6条不同曲线，并在x轴y轴分别标注为“x”和“y=kcosx”，且显示网格。
% [提交M文件：*21.m，记录命令、调用及结果图(打印图)]

close all; clear; clc;
x=0:0.1:3*pi;
for k=0.5:0.1:1
    y=k.*cos(x);
    plot(x,y)
    hold on
end
legend('y=0.5cosx','y=0.6cosx','y=0.7cosx','y=0.8cosx','y=0.9cosx','y=cosx');
xlabel('x')
ylabel('y = kcosx')
grid on
