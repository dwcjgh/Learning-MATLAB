% ���ӳ�������    ����
% x��  	����ate					ʣ��remain 					0	10
% 1	1/2x+1					x-(1/2x+1)						6	4
% 2	(x-(1/2x+1))/2+1		(x-(1/2x+1))-((x-(1/2x+1))/2+1)	3	1
% 3	(x-(1/2x+1))-((x-(1/2x+1))/2+1) = 1
%
%
% x��  	����ate							ʣ��remain
% 1	     ate          =x/2+1			remain=x-ate       =x-(1/2x+1)
% 2	ate=remain/2+1    =(x-(1/2x+1))/2+1	remain=remain-ate  =(x-(1/2x+1))-((x-(1/2x+1))/2+1)
% 3	ate=remain/2+1						remain=remain-ate

close all;clear;clc;
n = input('��������ӳ��˶��������ӣ�������N��1<N��10����');
% fprintf('���к�15���յ�n = %d\n',n); % �������
ate = 0;
x = 0;
remain = 0;
while remain ~= 1
    remain = x;
%     fprintf('���к�21������x = %d\n',x); % �������
    for i=1:n-1
        ate = fix(remain/2)+1;% �з��� ��C��һ��������Ҫfix()
%         fprintf('���к�24��%d ��2ȡ��� %d,%d\n',remain,rem(remain,2),rem(remain,2) == 1);
        if(rem(remain,2) == 1)% ����С���׵���������mod�㲻�ԣ������˿�һ��Сʱ
            remain = 0;
%             fprintf('���к�27��break������һ��xֵ\n'); % �������
            break;
        end
        remain = remain - ate;
%         fprintf('���к�31��ate = %d,     remain = %d\n',ate,remain); % �������
    end
%     fprintf('���к�33��remain = %d��  x = %d\n\n',remain,x); % �������
    x = x + 1;
end
fprintf('%d\n',x-1);


