% �߿�׹��

close all;clear;clc;
H = input('Ƥ��ĳ�ʼ�߶��ǣ��Ǹ���������');
n = input('��ڼ��εķ����߶ȣ��Ǹ���������');
s = H;
h = H;
if( n ~= 0)
    for i = 1:n-1
        s = s + h;
        h = h / 2;
        % ������䣬��ע�͡�
        fprintf("��%d�����ʱ�ڿ��о����ľ���%f\n��%d�η����ĸ߶�%f\n",i,s,i,h);
    end
    h = h / 2;
    disp(['Ƥ���',num2str(n),'�����ʱ�ڿ��о����ľ���',num2str(s)])
    disp(['��',num2str(n),'�η����ĸ߶�',num2str(h)])
    fprintf("����һλС����%.1f    %.1f\n",s,h);
else
    fprintf("0.0   0.0\n");
end

% ����ͼʾ
% H
% \
% \
% \
% \   H/2 H/2
% \	    \	\
% \	    \	\  H/4 H/4
% \	    \	\	\	\
% ��	��	��	��	��	��	\
% 1		2		3
% 2H-H	2H-H+H	2H-H+H+1/2H 
% H		H/2		H/4

