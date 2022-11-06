function [bs,min,n]=xc6gyz2(x)
% 功能：将向量或矩阵中元素顺次累乘，并求满足累乘值>50000最小值和对应的项数值。
% bs:计算向量x元素顺次累乘
% min:满足条件bs>50000的累乘最小值和
% n:满足条件bs>50000的对应的项数值。
% 格式：[bs,min,n]=xc6gyz2(x)

% close all;clear;clc;
% x = [1,100,2;10,1000,3];          % 调试用数据
y = reshape(x,1,[]);
bs = 1; i = 1; ifgetresult = 0;     % 初始化
for i = 1:length(y)
    bs = bs*y(i);                   % bs：计算所有数据顺次累乘
    if bs>50000 && ifgetresult==0   % ifgetresult：判别是否已得到答案
        ifgetresult = 1;            % 若已满足条件，记录满足条件的最小值
        min = bs;                   % min:满足条件bs>50000的累乘最小值
        n = i;                      % n:满足条件bs>50000的对应的项数值。
    end
end

if ifgetresult==0                   % 若直到最后都没有得到满足题意的结果
    disp('累乘未满足 bs>50000, min和n返回0')      % 输出报错
    min = 0;                        % min和n赋0表示错误
    n = 0;
end
disp(['全部累乘结果 bs = ',num2str(bs)])
disp(['bs>50000最小值 min = ',num2str(min)])
disp(['对应的项数值 n = ',num2str(n)])
