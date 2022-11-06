%% 小测五
% 2、自定义10维向量x，用6种其他二维图形绘制

close all;clear;clc;
x=rand(1,10);
subplot(2,3,1)
pie(x);
title('饼图')

subplot(2,3,2)
bar(x);
title('条形图')

subplot(2,3,3)
feather(x);
title('羽毛图')

subplot(2,3,4)
pareto(x);
title('排列图')

subplot(2,3,5)
hist(x);
title('直方图')

subplot(2,3,6)
area(x);
title('面积图')
