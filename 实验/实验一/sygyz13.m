% 3、用for循环结构编写一个函数，实现求m～n的和，
% 其中m<n，且为整数。要求m,n为输入变量，其值在调用时直接给出并记录。

function [sum]=sygyz13(m,n)
if m>=n || fix(m)~=m || fix(n)~=n
    error('第一个参数须小于第二个参数且都为整数')
else
    sum = 0;
    for i = m:n
        sum = i+sum;
    end
end


% 调用示例：
% 输入：sum = sygyz13(3,5)	输出：sum = 12
% 输入：sum = sygyz13(-3,5)	输出：sum = 9
% 输入：sum = sygyz13(0,5)	输出：sum = 15
% 输入：sum = sygyz13(10,5)	输出：第一个参数须小于第二个参数且都为整数
% 输入：sum = sygyz13(0,5.2)	输出：第一个参数须小于第二个参数且都为整数

