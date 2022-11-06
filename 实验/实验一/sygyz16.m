% 6、用while和if-else编写一个函数证明：当输入数据为一个正整数时，
% 通过"偶数用2除之，奇数与3相乘再加上1”的重复运算，最终结果为1，
% 通过展示计算结果验证证明过程。
% 当验证数据为：负数，0,1，任意整数，复数时的结果。

function [m]=sygyz16(n)
m = n;              % 备份原值，换字母运算
if m<=0 || fix(m)~=m || imag(m)~=0
    disp('输入数据须是正整数')
    m = 'error';
else        
    while m ~= 1
        if mod(m,2)==0      % n 为偶数
            m = m/2;
        else
            m = m*3 + 1;
        end
    end
end
% 示例
% 输入：m=sygyz16(100)			输出：m = 1
% 输入：m=sygyz16(-50)			输出：输入数据须是正整数		m = 'error'
% 输入：m=sygyz16(0)			输出：输入数据须是正整数		m = 'error'
% 输入：m=sygyz16(1)			输出：m = 1
% 输入：m=sygyz16(5+9i)		输出：输入数据须是正整数		m = 'error'

