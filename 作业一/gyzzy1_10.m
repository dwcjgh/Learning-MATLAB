%% 复数域数学模型中，零点式转化为多项式传递函数
% 郭永峥 2022年9月10日17:49:49

close all; clear; clc;
z=[-7,-2]';
p=[-3,-5,-9]';
k=4 ;
spk = zpk (z, p,k) 
[num, den] = zp2tf(z,p,k) 
stf = tf(num, den)

