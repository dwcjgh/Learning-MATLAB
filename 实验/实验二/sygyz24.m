%{
4�����Ƴ���Ϊa������Ϊb����Բ��ab�Զ��塣���ö���ͼ����ͼ����״�����ܡ�����ָ�
Ӱ�죬����������ͼ�桰��߱ȡ�������ͼ��Ŀ����Ӱ�졣��6����ͼǰ���������񣬺�������
ʾ����ĺ����ꣻ������������Normal��Equal��Square��Image��Image Fill��Tight��
��ͷ��ʾ�����������������������ܰ���ѧ��עʹ���ϲ���ʾ��������
%}
close all;clear;clc

%
subplot(2,3,1)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis normal
ylabel("x^2/36+y^2/25 = 1")
title('�������ߣ������� normal')
%
subplot(2,3,2)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis equal
ylabel("x^2/36+y^2/25 = 1")
title('�������ߣ������� equal')
%
subplot(2,3,3)
ezplot('x^2/36+y^2/25 - 1')
grid on
axis square
ylabel("x^2/36+y^2/25 = 1")
title('�������ߣ������� square')
%
subplot(2,3,4)
ezplot('x^2/36+y^2/25 - 1')
axis image
legend('x^2/36+y^2/25 = 1')
title('��ʾ����ĺ����꣬������ image')
%
subplot(2,3,5)
ezplot('x^2/36+y^2/25 - 1')
axis image fill
legend('x^2/36+y^2/25 = 1')
title('��ʾ����ĺ����꣬������ image fill')
%
subplot(2,3,6)
ezplot('x^2/36+y^2/25 - 1')
axis tight
legend('x^2/36+y^2/25 = 1')
title('��ʾ����ĺ����꣬������ tight')
