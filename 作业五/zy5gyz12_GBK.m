% �������ݵıȽ��������
% �����������3��������С���������


close all;clear;clc;
a = input('������ÿһ������س�����һ������');  % ������ʹ�� a b c �洢
b = input('������ÿһ������س����ڶ�������');
c = input('������ÿһ������س�������������');

if a > b
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % ��ʾ��������
    t = a;                      % t���м����
    a = b;
    b = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % ��ʾ��������
end

if b > c
    t = b;
    b = c;
    c = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % ��ʾ��������
end

if a > b
    t = a;
    a = b;
    b = t;
    disp(['a=',num2str(a),' b=',num2str(b),' c=',num2str(c)])   % ��ʾ��������
end

disp([num2str(a),' -> ',num2str(b),' -> ',num2str(c)]);