% ��֪����ʽy1,y2��ϵ��Ϊp1,p2���Զ��壬ע���������ļ�����ʵ�֡�
close all;clear;clc
y1 = [9,8,1,-6,3];
y2 = [-4,5,4,6];
% 1����ʾy1,y2��
Y1 = poly2sym(y1)
Y2 = poly2sym(y2)
% 2������������ʽ�������yq������yr����ʾ��
[yq,yr] = deconv(y1,y2);
YQ = poly2sym(yq)
YR = poly2sym(yr)
% 3����yq����x = -2,0,2,9����ֵA��
A1 = polyval(yq,-2)
A2 = polyval(yq,0)
A3 = polyval(yq,2) 
A4 = polyval(yq,9) 
% 4��Ȼ����yr�����ĸ�B��
B = roots(yr)


