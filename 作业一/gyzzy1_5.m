%% 表示复数域数学模型中的零极点式传递函数
% 郭永峥 2022年9月10日10:13:12

close all; clear; clc;
z = [-3];
p = [-2 -4 -5];
k = 7;
sys = zpk(z,p,k)
