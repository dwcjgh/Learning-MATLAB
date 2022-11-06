% �������߻��ƣ���֪���͵����������ı�"����.txt����ѡ����ʵ����ݵ�
% �� interp1() ��ֵ���ɲ�ֵ���ߣ���5�ζ���ʽ������������ߣ�
% ��������ֵ���ߺ�������ߵ�����

% �������ͣ�NACA6412
% ���ݵ�
table = load('����.txt');
xup = table(1:30,1);        % ��ֵ���� �ϰ벿��
yup = table(1:30,2);        
xdown = table(31:60,1);     % ��ֵ���� �°벿��
ydown = table(31:60,2);

% �� interp1() ��ֵ���ɲ�ֵ����
subplot(2,1,1)
Cxup = 0:1:100;             % ��ֵ�� �Ա���
Cyup = interp1(xup,yup,Cxup,'spline');     % ����������ֵ
plot(xup,yup,'o',Cxup,Cyup)    % ��ֵ����
hold on

Cxdown = 0:0.1:100;
Cydown = interp1(xdown,ydown,Cxdown);
plot(xdown,ydown,'o',Cxdown,Cydown)
hold off

% ��5�ζ���ʽ�������������
subplot(2,1,2)
pup = polyfit(xup,yup,5);
Nxup = 0:1:100;
Nyup = polyval(pup,Nxup);
plot(xup,yup,'o',Nxup,Nyup)
hold on

pdown = polyfit(xdown,ydown,5);
Nxdown = 0:1:100;
Nydown = polyval(pdown,Nxdown);
plot(xdown,ydown,'o',Nxdown,Nydown)
hold off
