% 三个数据的比较排序输出
% 将输入的任意3个整数从小到大输出。


close all;clear;clc;
a = input('请输入每一个数后回车（第一个数）');  % 三个数使用 a b c 存储
b = input('请输入每一个数后回车（第二个数）');
c = input('请输入每一个数后回车（第三个数）');

if a > b
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % 显示交换过程
    t = a;                      % t：中间变量
    a = b;
    b = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % 显示交换过程
end

if b > c
    t = b;
    b = c;
    c = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % 显示交换过程
end

if a > b
    t = a;
    a = b;
    b = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % 显示交换过程
end

disp([num2str(a),' -> ',num2str(b),' -> ',num2str(c)]);