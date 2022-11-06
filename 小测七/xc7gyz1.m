% % 小测七
% 1、自定义三个三维向量a、b，c，求它们任意两个的点积、矢积，
% 并求它们的混合积、二重矢积。

close all;clear;clc;

a=[1,3,7]; b=[3,4,9]; c=[1,2,5];
disp('任意两个的点积')
dot1 = dot(a,b)               % 点积
dot2 = dot(a,c)
dot2 = dot(b,c)
disp('任意两个的矢积')
cross1 = cross(b,c)             % 矢积
cross2 = cross(a,c)
disp('混合积')
A3 = dot(a,cross(b,c))      % 混合积
disp('二重矢积')
A4 = cross(a,cross(b,c))    % 二重矢积


% 刚开始理解成了空间向量，应该不是这个意思
% E = zeros(10, 5, 3) % 10行5列3层的三维矩阵
% E(:,:,1) = rand(10,5) % 第一层10行5列，(0~1) 随机数
% E(:,:,2) = randi(5,10,5) % 最大值为5 的随机整数
% E(:,:,3) = randn(10,5) % 标准正态分布的伪随机数
% 
% A = zeros(5,5,5);
