%% ��ҵ��
% 2���Զ���6������������ ezplot ��ͼ��ÿ��ͼ���� subplot �е�����ʾ��
% ��������������

close all;clear;clc;

subplot(2,3,1)
ezplot('y.^5 + 2*y - x - 3*x.^7', [-10, 10], [-25, 25])

subplot(2,3,2)
ezplot('(x.^2)/16 + (y.^2)/9 -1', [-4.5, 4.5], [-4.5, 4.5])

subplot(2,3,3)
ezplot('sin(x.*y) - 1/(y-x) -1', [0, 50]) % ��ȫ���ⷢ�ֻ������ÿ���

subplot(2,3,4)
ezplot('x.^4 + y.^4 - (x-y).^2', [-2, 2])

subplot(2,3,5)
ezplot('sin(x.*y) - y', [-15,15])

subplot(2,3,6)
ezplot('x.^(2/3) + y.^(2/3) - 5.^(2/3)')


feature('locale')



