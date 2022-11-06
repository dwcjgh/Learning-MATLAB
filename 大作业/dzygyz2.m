% ��25�֣�ʹ�ú���f(x)��Ϊ�ȼ���ֵȡ���㣬����ȡ����ɢ��ͼ��f(x)ͼ��ʹ���Ϊ14
% �Ĳ�ֵ����ͼ���Լ��ϲ���ͬһ��ͼ��ͼ����֤���������ٶ�f(x)ȡ�����б�ѩ���
% ��������ȡ���㣬�۲��Ƿ�����������
% f(x)=1/(1+12x^2 )

close all;clear;clc

% ��[-1,1]�϶���������
disp('���������������� - �ȼ��ڵ㡪������')
x = linspace(-1,1,100);
runge = @(x) 1./(1+12*x.^2);

% ׼������ʽϵ��
xu = linspace(-1,1,15);     % ����һ�������� [-1,1] �е� 15 ���ȼ�����ɵ�������
yu = runge(xu);             
p = polyfit(xu,yu,14);      % ����ʽ������ϣ����ش���Ϊ 14 �Ķ���ʽϵ��p
ypoly = polyval(p,x);       % �������ʽ p �� x ��ÿ���㴦��ֵ

% �ֲ�����ͼ��
subplot(2,3,1)
scatter(xu,yu,100,"red")                    % ɢ��ͼ��ǲ�ֵ��
title('scatterɢ��ͼ��ǲ�ֵ��')
subplot(2,3,2)
fplot(runge,[-1,1],'g','LineWidth',2)       % ԭ����
title('fplot��ֵ��ȡ������')        
subplot(2,3,3)
% plot(x,ypoly)                               % ����ʽ������ϵĲ�ֵ����
stem(x,ypoly)
title('stem����ʽ������ϵĲ�ֵ����')

% �ϲ��ԱȻ���ͼ��
subplot(2,3,4)
hold on
% plot(xu,yu,'ro','MarkerSize',12)          % ��ֵ��
scatter(xu,yu,100,"red")                    % ɢ��ͼ��ǲ�ֵ��
plot(x,ypoly)                               % ����ʽ������ϵĲ�ֵ����  
fplot(runge,[-1,1],'g','LineWidth',2)       % ԭ����
hold off
title('��������(�ȼ��ڵ�)','FontSize',16)
g = legend( {'f(x)', 'p(x)'}) ;             % �������������ͼ��
set(g,'FontSize',14)                        % �������ִ�С

% =======================================================================
disp('������������������ - �б�ѩ��ڵ㡪������')
% �б�ѩ�������ϵ���ֵ
i = 1:15;
xC = cos((2*i-1)*pi/(2*15));
yC = runge(xC);
p2 = polyfit(xC,yC,14);

% ����ͼ��
ypolyC = polyval(p2,x);     % �������ʽ p2 �� x ��ÿ���㴦��ֵ��
subplot(2,3,6)
hold on
plot(xC,yC,'ro','MarkerSize',12)
plot(x,ypolyC)
plot(x,runge(x),'LineWidth',2)
hold off
title('����������(�б�ѩ��ڵ�)','FontSize',16)
h = legend('f(x)', 'p(x)');
set(h,'FontSize',14);
