% 高空坠球

close all;clear;clc;
H = input('皮球的初始高度是（非负整数）：');
n = input('求第几次的反弹高度（非负整数）：');
s = H;
h = H;
if( n ~= 0)
    for i = 1:n-1
        s = s + h;
        h = h / 2;
        % 调试语句，可注释↓
        fprintf("第%d次落地时在空中经过的距离%f\n第%d次反弹的高度%f\n",i,s,i,h);
    end
    h = h / 2;
    disp(['皮球第',num2str(n),'次落地时在空中经过的距离',num2str(s)])
    disp(['第',num2str(n),'次反弹的高度',num2str(h)])
    fprintf("保留一位小数：%.1f    %.1f\n",s,h);
else
    fprintf("0.0   0.0\n");
end

% 分析图示
% H
% \
% \
% \
% \   H/2 H/2
% \	    \	\
% \	    \	\  H/4 H/4
% \	    \	\	\	\
% 下	上	下	上	下	上	\
% 1		2		3
% 2H-H	2H-H+H	2H-H+H+1/2H 
% H		H/2		H/4

