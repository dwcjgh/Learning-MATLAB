% 猴子吃桃问题    分析
% x个  	吃了ate					剩下remain 					0	10
% 1	1/2x+1					x-(1/2x+1)						6	4
% 2	(x-(1/2x+1))/2+1		(x-(1/2x+1))-((x-(1/2x+1))/2+1)	3	1
% 3	(x-(1/2x+1))-((x-(1/2x+1))/2+1) = 1
%
%
% x个  	吃了ate							剩下remain
% 1	     ate          =x/2+1			remain=x-ate       =x-(1/2x+1)
% 2	ate=remain/2+1    =(x-(1/2x+1))/2+1	remain=remain-ate  =(x-(1/2x+1))-((x-(1/2x+1))/2+1)
% 3	ate=remain/2+1						remain=remain-ate

close all;clear;clc;
n = input('请输入猴子吃了多少天桃子（正整数N（1<N≤10））');
% fprintf('（行号15）收到n = %d\n',n); % 调试语句
ate = 0;
x = 0;
remain = 0;
while remain ~= 1
    remain = x;
%     fprintf('（行号21）尝试x = %d\n',x); % 调试语句
    for i=1:n-1
        ate = fix(remain/2)+1;% 列方程 和C不一样的是需要fix()
%         fprintf('（行号24）%d 对2取余得 %d,%d\n',remain,rem(remain,2),rem(remain,2) == 1);
        if(rem(remain,2) == 1)% 出现小数抛掉，这里用mod算不对，调试了快一个小时
            remain = 0;
%             fprintf('（行号27）break跳到下一个x值\n'); % 调试语句
            break;
        end
        remain = remain - ate;
%         fprintf('（行号31）ate = %d,     remain = %d\n',ate,remain); % 调试语句
    end
%     fprintf('（行号33）remain = %d，  x = %d\n\n',remain,x); % 调试语句
    x = x + 1;
end
fprintf('%d\n',x-1);


