% 翼型曲线绘制：已知翼型的数据如下文本"翼型.txt”。选择合适的数据点
% 用 interp1() 插值生成插值曲线，用5次多项式来生成拟合曲线，
% 并分析插值曲线和拟合曲线的区别。

% 机翼翼型：NACA6412
% 数据点
table = load('翼型.txt');
xup = table(1:30,1);        % 插值数据 上半部分
yup = table(1:30,2);        
xdown = table(31:60,1);     % 插值数据 下半部分
ydown = table(31:60,2);

% 用 interp1() 插值生成插值曲线
subplot(2,1,1)
Cxup = 0:1:100;             % 插值点 自变量
Cyup = interp1(xup,yup,Cxup,'spline');     % 三次样条插值
plot(xup,yup,'o',Cxup,Cyup)    % 插值曲线
hold on

Cxdown = 0:0.1:100;
Cydown = interp1(xdown,ydown,Cxdown);
plot(xdown,ydown,'o',Cxdown,Cydown)
hold off

% 用5次多项式来生成拟合曲线
subplot(2,1,2)
pup = polyfit(xup,yup,5);
Nxup = 0:1:100;
Nyup = polyval(pup,Nxup);
plot(xup,yup,'o',Nxup,Nyup)
hold on

pdown = polyfit(xdown,ydown,5);
Nxdown = 0:1:100;
Nydown = polyval(pdown,Nxdown);
plot(xdown,ydown,'o',Nxdown,Nydown)
hold off
