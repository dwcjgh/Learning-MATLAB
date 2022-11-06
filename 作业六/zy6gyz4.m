%% ��ҵ��
% 4���Ժ�������������ͼ2-56�������ݲ�������������������������Ƚ��в�ֵ�Ͷ���ʽ��ϡ�
% ӭ�Ǧ�       -2      2       4       6       10      14      20      24      28
% ����ϵ��C_y   -0.1    0.2     0.35    0.5     0.8     1.06    1.4     1.29    1.1
% ����ϵ��C_x   0.01    0.01    0.015   0.035   0.05    0.08    0.15    0.26    0.375
% �����K      -7      11      20.8    20      17      13      9       5       3

close all;clear;clc;
alpha = [-2, 2, 4, 6, 10, 14, 20, 24, 28];

C_y = [-0.1, 0.2, 0.35, 0.5, 0.8, 1.06, 1.4, 1.29, 1.1];
C_x = [0.01, 0.01, 0.015, 0.035, 0.05, 0.08, 0.15, 0.26, 0.375];
K = [-7, 11, 20.8, 20, 17, 13, 9, 5, 3];
xi = -2:0.20:28;


% ������C=��ֵ Cy=C_y
CCy= interp1(alpha, C_y,xi,'cubic')    % ˫���β�ֵ

subplot(2,3,1)
plot(alpha,C_y,'bo',xi,CCy)
grid on
xlabel('����ϵ����ֵ')

CCx = interp1(alpha, C_x,xi,'pchip')    % �ֶ�����hermite��ֵ
subplot(2,3,2)
plot(alpha,C_x,'bo',xi,CCx)
grid on
xlabel('����ϵ����ֵ')

CyK = interp1(alpha, K,xi,'spline') % һά������ֵ
subplot(2,3,3)
plot(alpha,K,'bo',xi,CyK)
grid on
xlabel('����Ȳ�ֵ')

% ���
NCy = polyfit(alpha, C_y, 6);
y1 = polyval(NCy, xi);
subplot(2,3,4)
plot(alpha,C_y,'o',xi,y1)
grid on     % �ڻ�ͼ��ʱ�����������
title('�����������')

NCx = polyfit(alpha, C_x, 6);
y2 = polyval(NCx, xi);
subplot(2,3,5)
plot(alpha,C_x,'o',xi,y2)
grid on     % �ڻ�ͼ��ʱ�����������
title('�����������')

NK = polyfit(alpha, K, 6);
y3 = polyval(NK, xi);
subplot(2,3,6)
plot(alpha,K,'o',xi,y3)
grid on     % �ڻ�ͼ��ʱ�����������
title('������������')







