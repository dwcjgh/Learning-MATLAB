function [as] = xc6gyz1(n)
% 将向量或矩阵中所有元素顺次求和
% n:向量或矩阵
% as：累加结果
% 调用方法：[as] = xc6gyz1(n)

% n = [1,9;2,8;3,7];        % 测试用数据
x = reshape(n,1,[]);
as = 0;                     % as：数组元素顺次累加结果
for i = 1:length(x)
    as = as + x(i);
end

disp(['全部累加结果 as = ',num2str(as)])



