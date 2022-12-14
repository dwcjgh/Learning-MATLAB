%% 小测六
% 1、编程求和的函数文件，其值存入as，和的函数形式自拟，若含有参数n则将n为参数输入。
% 2、编程求积的函数文件，其值存入bs，积的函数形式自拟，求bs>50000最小值和对应的项数值。

close all;clear;clc;

a = [1,100,2;10,1000,3];
b = [50010, 1];
d = [50000, 1];
e = [1, 2, 3, 4, 5, 6];
f = [500,300;20,9000];

help xc6gyz2

fprintf('对于数组[1,100,2;10,1000,3]：\n')
[bs,min,n] = xc6gyz2(a);
% y(i)      1   10  100     1000    2       3
% multipli  1   10  1000    1000000 2000000 6000000
% if判断      0   0   0       1       0       0
% 输出：bs=6000000, min=1000000, n=4
fprintf('\n对于数组[50010, 1]：\n')
[bs,min,n] = xc6gyz2(b);

fprintf('\n对于数组[50000, 1]：\n')
[bs,min,n] = xc6gyz2(d);

fprintf('\n对于数组[1, 2, 3, 4, 5, 6]：\n')
[bs,min,n] = xc6gyz2(e);

fprintf('\n对于数组[500,300;20,9000]：\n')
[bs,min,n] = xc6gyz2(f);