%% 小测七
% 2、用系数的形式自定义一个7次多项式yl和一个2次多项式y2，将它们用符号出来，并完成：
% 1）求y1（-3），y1（0），y1（3）的值语句
% 2）求y1=0的根的语句
% 3）求yl*y2，y1/y2的二阶导数，显示结果的多项式形式

% y1 = 2*x^7 - 3*x^6 + 19*x^5 - 63*x^4 + 155*x^3 + 22*x^2 - 59*x + 21
% y2 = 100*x^2 + 26*x + 31

close all;clear;clc;
y1 = [1, 0, 0, 0];    % exp5_31.m 多项式的描述
Y1 = poly2sym(y1)                           % 符号形式多项式输出

y2 = [2, 0, 1];
Y2 = poly2sym(y2)                           % 符号形式多项式输出

% 1）求y1（-3），y1（0），y1（3）的值
y1_f3 = polyval(y1,-3)      % y1（-3）
y1_0 = polyval(y1,0)        % y1（0）
y1_3 = polyval(y1,3)        % y1（3）

% 2）求 y1=0 的根的语句
Gen = roots(y1)     % y1=0 的根

% 3）求 yl*y2，y1/y2 的二阶导数，显示结果的多项式形式
% y1y2 = conv(y1,y2);         % 多项式的乘法 exp5_34
% y1convy2 = poly2sym(y1y2)   % 输出多项式
% [q,r] = deconv(y1,y2);      % 多项式的除法，q：商多项式，r：余多项式
% y1deconvy2 = poly2sym(q)    % 输出多项式
k = polyder(y1,y2);         % 求多项式 y1 y2 乘积的导数
K = poly2sym(k)
k2 = polyder(k);            % 再求一次导数
K = poly2sym(k2)            % 输出

Q = poly2sym(y1)             % 分子
R = poly2sym(y2)             % 分母
[q1,r1] = polyder(y1,y2);      % 求 y1 y2 相除的一阶导数 

Q = poly2sym(q1)             % 分子
R = poly2sym(r1)             % 分母
[q2,r2] = polyder(q1,r1);       % 求 y1 y2 相除的二阶导数  
% q3 = conv(polyder(q1),r1)-conv(polyder(r1),q1); % 除法求导公式
% r3 = conv(r2,r2);            % 除法求导公式
fprintf('除法的导数：\n分子：')
Q = poly2sym(q2)             % 分子
fprintf('分母：')
R = poly2sym(r2)             % 分母
% 化简
fprintf('分子/分母：')
F = Q/R             % 仅仅是组合
fprintf('化简：')
f = simplify(F)     % 化简

