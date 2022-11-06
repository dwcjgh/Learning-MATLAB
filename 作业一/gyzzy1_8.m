%% 拉格朗日插值公式
% 郭永峥 2022年9月10日11:15:47

% 给出f(x)=In(x)的数值表,用Lagrange计算In(0.54)的近似值.


function y=gyzzy1_8(x0,y0,x)
ii = 1:length(x0); y = zeros(size(x));
for i = ii
    ij = find(ii ~= i);
    yl = 1; 
    for j = 1:length(ij), yl = yl.*(x-x0(ij(j))); end 
    y = y + yl*y0(i)/prod(x0(i)-x0(ij));
end

% 运行：
% x=[0.4:0.1:0.8];
% y=[-0.916291,-0.693147,-0.510826,-0.356675,-0.223144];
% gyzzy1_8(x,y,0.54)
% 结果：
% ans=
% -0.6161
%(精确解-0.616143)