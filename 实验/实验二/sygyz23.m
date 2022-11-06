% 3、三维图绘制：
% 1)子图1中绘制参数方程 x = t,y = sin(t),z = cos(t) 在t区间自定义步长自定义的三维曲线，
% 曲线为红色实线，线宽3，圆点(黑框，空心，大小10)。
t1 = 0:pi/20:8*pi;
x1 = t1;
y2 = sin(t1);
z3 = cos(t1);
subplot(1,2,1)
plot3(x1,y2,z3,'r-o','LineWidth',3,'MarkerEdgeColor','k','MarkerSize',10)
% 2)子图2中自定义x,y,z绘制参数三维曲面，自定义颜色。
[x,y]=meshgrid(-50:50);
z = (x.^2)/20 + (y.^2)/50;
subplot(1,2,2)
mesh(x,y,z,EdgeColor='flat')     % 绘制三维网格图,曲面图使用单色不美观，使用flat上色方案
title('三维曲面：椭圆抛物面')