% 1��x��[0,3��]��k=0.5��0.1��1���Զ����ͼ����������y=kcosx��
% ��ͼ����������6����ͬ���ߣ�����x��y��ֱ��עΪ��x���͡�y=kcosx��������ʾ����
% [�ύM�ļ���*21.m����¼������ü����ͼ(��ӡͼ)]

close all; clear; clc;
x=0:0.1:3*pi;
for k=0.5:0.1:1
    y=k.*cos(x);
    plot(x,y)
    hold on
end
legend('y=0.5cosx','y=0.6cosx','y=0.7cosx','y=0.8cosx','y=0.9cosx','y=cosx');
xlabel('x')
ylabel('y = kcosx')
grid on
