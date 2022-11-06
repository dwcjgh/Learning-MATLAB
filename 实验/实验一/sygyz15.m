% 5、用while循环结构编写一个函数，实现求y=1！+2！+3！+ … +n！的值，
% n为输入变量可为非正整数。
% [提交M文件：*15.m，记录命令、3个调用及结果]

function [sum]=sygyz15(n)
if n<0
    disp('请输入非负整数')
    sum = 'error';
elseif n == 0
    sum = 1;
else
    sum = 0;
    i = 1;
    while i<=n
        fact = 1;
        for j = 1:i
            fact = fact*j;
        end
%              fprintf('%d 的阶乘为 %d\n',i,fact)    % 调试语句
        i = i+1;
        sum = sum + fact;
    end
end

% 调用示例：
% 输入1：sum=sygyz15(-1)
% 输出1：请输入非负整数			sum = 'error'
% 输入2：sum=sygyz15(5)
% 输出2：sum = 153
% 输入3：sum=sygyz15(0)
% 输出3：sum= 1
% 输入4：sum=sygyz15(3)
% 输出4：sum = 9
