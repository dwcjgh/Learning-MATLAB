% 龙贝格(Romberg)积分
clc,clear,close all

% 定义题目参数
syms x                  
fprintf('INFO:解Word内示例题目请分别输入：exp(x)*cos(x)\t\t0\tpi\n')
f = input('请输入被积函数 f = ')   % 被积函数 f = exp(x)*cos(x);
a = input('积分下限 a = ');         % 设定上下限
b = input('积分上限 b = ');         

fplot(f)                
title('函数图像')      
delta0 = 1e-6;          % 可设定误差限

% 进行龙贝格算法
f = matlabFunction(f);
n = 100;        % 最大迭代次数
h = (b-a)./(2.^(0:n-1));
r = zeros(n);                   % r 为 T 表
r(1,1) = (b-a)*(f(a)+f(b))/2;   % 梯形公式计算 r

for j=2:n

    % 计算 T表中第 j 行 第 1 列的元素
    subtotal = 0;
    for i=1:2^(j-2)
        subtotal = subtotal + f(a+(2*i-1)*h(j));
    end
    r(j,1) = r(j-1,1)/2+h(j)*subtotal;

    % 计算 T表中第 j 行的其他元素
    for k = 2:j
        r(j,k) = (4^(k-1)*r(j,k-1)-r(j-1,k-1))/(4^(k-1)-1);
    end

    if abs(r(j-1,j-1) - r(j,j)) < delta0    % 设置终止条件
        break
    end

end
solve = r(j,j);

% 整理输出结果
solve_real = int(f,x,a,b);
disp('龙贝格积分计算结果为：')
disp(vpa(solve,6))
disp('实际积分结果为：')
disp(vpa(solve_real,6))
