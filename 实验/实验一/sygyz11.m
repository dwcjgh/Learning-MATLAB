% 1��������������ɼ��������㡣 [�ύM�ļ���**11.m��ֻ��¼1)��2)������ͽ��]
clc;clear;close all;
% 1)�Զ��峤�����ߡ��뾶���󳤷��塢Բ����Բ׶�ı�����������
long = 10; wide = 8; h = 15; r = 5;
% =====������=====
s1 = (long.*wide + long.*h + wide.*h)*2;
v1 = long.*wide.*h;
disp('=====������=====')
disp(['����',num2str(long),'  ��',num2str(wide),'  �ߣ�',num2str(h)])
disp(['�������',num2str(s1),'  �����',num2str(v1)])
% =====Բ��=====
s2 = 2*pi*r.^2 + 2*pi*r.*h;
v2 = pi*r.^2.*h;
disp('=====Բ��=====')
disp(['�뾶��',num2str(r),'  �ߣ�',num2str(h)])
disp(['�������',num2str(s2),'  �����',num2str(v2)])
% =====Բ׶=====
s3 = pi*r.^2 + pi*r.*sqrt(r.^2 + h.^2); % S׶=��r�0�5+��rl������l=ĸ�ߣ�
v3 = 1/3*pi*r.^2.*h;
disp('=====Բ׶=====')
disp(['�뾶��',num2str(r),'  �ߣ�',num2str(h)])
disp(['�������',num2str(s3),'  �����',num2str(v3)])

% 2)�Զ���x��y��ֵ����z1=xy/(x-y)^4��z2=x^2 y^3/(x^2-y)^3��z3=x^2 y^3/(x^2-y^2)^2��
x = 8;
y = 12;
z1 = x.*y./(x-y).^4
z2 = x.^2.*y.^3./(x.^2-y).^3
z3 = x.^2.*y.^3./(x.^2-y.^2).^2

% 3)��magic��zeros��ones����4*4�ľ���A1,A2,A3��
A1 = magic(4)
A2 = zeros(4)
A3 = ones(4)

% 4)��rand��randn��diag����ֱ�����1*5��һά���顢4*3�Ķ�ά���顣
rand(1,5)
rand(4,3)
randn(1,5)
randn(4,3)
A = diag([12,-5,6,0]);
B = A(:,1:3) 
