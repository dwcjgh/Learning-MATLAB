% ������(Romberg)����
clc,clear,close all

% ������Ŀ����
syms x                  
fprintf('INFO:��Word��ʾ����Ŀ��ֱ����룺exp(x)*cos(x)\t\t0\tpi\n')
f = input('�����뱻������ f = ')   % �������� f = exp(x)*cos(x);
a = input('�������� a = ');         % �趨������
b = input('�������� b = ');         

fplot(f)                
title('����ͼ��')      
delta0 = 1e-6;          % ���趨�����

% �����������㷨
f = matlabFunction(f);
n = 100;        % ����������
h = (b-a)./(2.^(0:n-1));
r = zeros(n);                   % r Ϊ T ��
r(1,1) = (b-a)*(f(a)+f(b))/2;   % ���ι�ʽ���� r

for j=2:n

    % ���� T���е� j �� �� 1 �е�Ԫ��
    subtotal = 0;
    for i=1:2^(j-2)
        subtotal = subtotal + f(a+(2*i-1)*h(j));
    end
    r(j,1) = r(j-1,1)/2+h(j)*subtotal;

    % ���� T���е� j �е�����Ԫ��
    for k = 2:j
        r(j,k) = (4^(k-1)*r(j,k-1)-r(j-1,k-1))/(4^(k-1)-1);
    end

    if abs(r(j-1,j-1) - r(j,j)) < delta0    % ������ֹ����
        break
    end

end
solve = r(j,j);

% ����������
solve_real = int(f,x,a,b);
disp('��������ּ�����Ϊ��')
disp(vpa(solve,6))
disp('ʵ�ʻ��ֽ��Ϊ��')
disp(vpa(solve_real,6))
