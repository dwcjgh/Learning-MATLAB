%% �����ļ�ͳ��ѧ���ɼ�
% ������һ���ٷ��Ƴɼ�ת��Ϊ����Ƴɼ���ת������
%     ���ڵ���90��ΪA��
%     С��90�Ҵ��ڵ���80ΪB��
%     С��80�Ҵ��ڵ���70ΪC��
%     С��70�Ҵ��ڵ���60ΪD��
%     С��60ΪE��

close all;clear;clc;
s = load(['�ɼ�.txt']);
% ʹ��chengji.m���ɣ�
% ����125*6�ĳɼ�����������Լ�����ÿ����һ�����ݶ���һ������̬�ֲ���
score = reshape(s,1,[]);
A = 0; B = 0; C = 0; D = 0; E = 0;
for i = 1:length(score)
    switch (fix(score(i) / 10))
        case 10
            A = A+1;
        case 9
            A = A+1;
        case 8
            B = B+1;
        case 7
            C = C+1;
        case 6
            D = D+1;
        otherwise
            E = E+1;
    end
end
fprintf("A:%d  B:%d  C:%d  D:%d  E:%d\n",A,B,C,D,E);
x = [A,B,C,D,E];
figure
pie3(x,[1,1,0,0,0]); 
title('�༶�ɼ��ֲ�')