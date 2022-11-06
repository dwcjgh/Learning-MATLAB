% （25分）使用函数f(x)作为等间距插值取样点，绘制取样点散点图、f(x)图像和次数为14
% 的插值函数图像，以及合并在同一张图的图像，验证龙格现象。再对f(x)取满足切比雪夫节
% 点条件的取样点，观察是否有龙格现象。
% f(x)=1/(1+12x^2 )

close all;clear;clc

% 在[-1,1]上定义龙格函数
disp('————龙格现象 - 等间距节点————')
x = linspace(-1,1,100);
runge = @(x) 1./(1+12*x.^2);

% 准备多项式系数
xu = linspace(-1,1,15);     % 创建一个由区间 [-1,1] 中的 15 个等间距点组成的向量。
yu = runge(xu);             
p = polyfit(xu,yu,14);      % 多项式曲线拟合，返回次数为 14 的多项式系数p
ypoly = polyval(p,x);       % 计算多项式 p 在 x 的每个点处的值

% 分步绘制图像
subplot(2,3,1)
scatter(xu,yu,100,"red")                    % 散点图标记插值点
title('scatter散点图标记插值点')
subplot(2,3,2)
fplot(runge,[-1,1],'g','LineWidth',2)       % 原函数
title('fplot插值点取样函数')        
subplot(2,3,3)
% plot(x,ypoly)                               % 多项式曲线拟合的插值函数
stem(x,ypoly)
title('stem多项式曲线拟合的插值函数')

% 合并对比绘制图像
subplot(2,3,4)
hold on
% plot(xu,yu,'ro','MarkerSize',12)          % 插值点
scatter(xu,yu,100,"red")                    % 散点图标记插值点
plot(x,ypoly)                               % 多项式曲线拟合的插值函数  
fplot(runge,[-1,1],'g','LineWidth',2)       % 原函数
hold off
title('龙格现象(等间距节点)','FontSize',16)
g = legend( {'f(x)', 'p(x)'}) ;             % 在坐标区上添加图例
set(g,'FontSize',14)                        % 设置文字大小

% =======================================================================
disp('————无龙格现象 - 切比雪夫节点————')
% 切比雪夫网格上的求值
i = 1:15;
xC = cos((2*i-1)*pi/(2*15));
yC = runge(xC);
p2 = polyfit(xC,yC,14);

% 绘制图像
ypolyC = polyval(p2,x);     % 计算多项式 p2 在 x 的每个点处的值。
subplot(2,3,6)
hold on
plot(xC,yC,'ro','MarkerSize',12)
plot(x,ypolyC)
plot(x,runge(x),'LineWidth',2)
hold off
title('无龙格现象(切比雪夫节点)','FontSize',16)
h = legend('f(x)', 'p(x)');
set(h,'FontSize',14);
