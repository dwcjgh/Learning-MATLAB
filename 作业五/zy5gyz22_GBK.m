%% 调用文件统计学生成绩
% 本题序将一个百分制成绩转换为五分制成绩。转换规则：
%     大于等于90分为A；
%     小于90且大于等于80为B；
%     小于80且大于等于70为C；
%     小于70且大于等于60为D；
%     小于60为E。

close all;clear;clc;
s = load(['成绩.txt']);
% 使用chengji.m生成：
% 生成125*6的成绩，存放名称自己定，每运行一次数据都不一样，正态分布。
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
title('班级成绩分布')