%% ��ҵ��
% 3��������ǰ��ѧ����֪ʶ��ƹ��ڶ���ʽ�������Ŀ2����ÿ����Ŀ�������ٰ�������3����

% ��֪����ʽ 
% y1 = 5*x^2 + 3*x + 9
% y2 = 4*x^4 + 7*x^3 + 3*x + 5
% ���� y3 = y1/y2 �����׵��������ʽ����������׵����� =0 �ĸ�

close all;clear;clc;
y1 = [10,-2,5,3,9];
y2 = [4,7,0,3,5];
% Y1 = poly2sym(y1)
% Y2 = poly2sym(y2)

[q1,r1] = polyder(y1,y2);       % �� y1 y2 �����һ�׵��� 
[q2,r2] = polyder(q1,r1);       % �� y1 y2 ����Ķ��׵���  
[q3,r3] = polyder(q2,r2);       % �� y1 y2 ��������׵���  
Q3 = poly2sym(q3)               % ����̶���ʽ
R3 = poly2sym(r3)               % ��������ʽ
k = roots(q3);                  % �Է������
m = roots(r3);                  % �ҳ��������ĵ�
istrue = 0;
for i = 1:length(k)
    for j = 1:length(m)
        if k(i) == m(j)
            idtrue = 1;
            break;
        end
    end
end
if istrue == 1
    disp('���д��ڲ������ĵ�')
else
    k
end

