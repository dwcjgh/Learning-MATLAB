%% 埃尔米特插值公式
% 郭永峥 2022年9月10日16:22:44
 
function y = gyzzy1_7(x0,y0,y1,x)
n = length(x0); m = length(x); 
for k=1:m yy=0.0;
    for i=1:n h=1.0; a=0.0;
        for j=1:n 
            if j~=i 
                h = h*((x(k)-x0(j))/(x0(i)-x0(j)))^2;
                a = 1/(x0(i)-x0(j))+a;
            end
        end 
        yy = yy+h*((x0(i)-x(k))*(2*a* y0(i)-y1(i))+y0(i)); 
    end 
    y(k)=yy; 
end
% 输入：
% x0 = [0.3,0.32,0.35]; 
% y0 = [0.29552,0.31457,0.34290];
% y1 = [0.95534,0.94924,0.93937];
% y = gyzzy1_7(x0,y0,y1,0.34)

% 输出： y = 0.3335