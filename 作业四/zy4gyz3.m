%% 作业四
% 3、自定义一个7维向量，并用4种特殊二维绘图函数绘图，每个图形在 subplot 中单独显示。

close all;clear;clc;
x = rand(1,7);

subplot(2,2,1)
bar(x);
title('条形图')

subplot(2,2,2)
feather(x);
title('羽毛图')

subplot(2,2,3)
pareto(x);
title('排列图')

subplot(2,2,4)
hist(x);
title('直方图')

