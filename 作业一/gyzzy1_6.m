%% 表示一阶系统的单位阶跃响应函数
% 郭永峥 2022年9月10日10:23:17

close all; clear; clc;
sys = tf([2, 1], [1, 4, 3]);
t = 0:0.1:10;
y = step(sys, t);
plot(t, y);
figure;
step(sys)