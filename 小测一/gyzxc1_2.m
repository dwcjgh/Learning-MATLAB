%% 题目：用简短命令计算并绘制在0<x<3范围内的e^x、x^2、√x。

x = linspace (0,3) ;
y1 = exp(x); y2 = x.^2; y3 = sqrt(x);
plot (x, y1,'r', x, y2,'g', x, y3, 'b')