%% 作业六
% 3、根据以前所学所有知识设计关于多项式运算的题目2个，每个题目里面至少包括运算3个。

% 已知多项式 
% y1 = 5*x^2 + 3*x + 9
% y2 = 4*x^4 + 7*x^3 + 3*x + 5
% 计算 y3 = y1/y2 的三阶导函数表达式并求出该三阶导函数 =0 的根

close all;clear;clc;
y1 = [10,-2,5,3,9];
y2 = [4,7,0,3,5];
% Y1 = poly2sym(y1)
% Y2 = poly2sym(y2)

[q1,r1] = polyder(y1,y2);       % 求 y1 y2 相除的一阶导数 
[q2,r2] = polyder(q1,r1);       % 求 y1 y2 相除的二阶导数  
[q3,r3] = polyder(q2,r2);       % 求 y1 y2 相除的三阶导数  
Q3 = poly2sym(q3)               % 输出商多项式
R3 = poly2sym(r3)               % 输出余多项式
k = roots(q3);                  % 对分子求根
m = roots(r3);                  % 找出不解析的点
istrue = 0;
for i = 1:length(k)
    for j = 1:length(m)
        if k(i) == m(j)
            idtrue = 1;
            break;
        end
    end
end
if istrue == 1
    disp('根中存在不解析的点')
else
    k
end

