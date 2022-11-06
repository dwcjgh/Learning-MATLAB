%% 作业六
% 1、根据概率论知识设计某样本进行5个数据处理的题目

% 将两封信投入三个信箱，设 X1 X2 分别表示第一个和第二个信箱投进的信的数量，求：
% (1)(X1,X2)的联合分布、边缘分布，
% (2)求 Xi 行的数学期望、联合分布律的标准方差，以及相关系数

close all;clear;clc;
% 由题意得：联合分布
LHFB = [1/9,2/9,1/9; 2/9,2/9,0; 1/9,0,0]
pi = sum(LHFB,2)        % x1 的边缘分布律 P{X=xi}
pj = sum(LHFB)          % x2 的边缘分布律 P{Y=yj}
pall = sum(LHFB(:))     % 全部元素求和

Exi = mean(LHFB,2)      % 求 xi 行的期望
fc = std(LHFB)          % 求 LHFB 标准方差
[r,p] = corrcoef(LHFB)  % 求矩阵 LHFB 的相关系数

