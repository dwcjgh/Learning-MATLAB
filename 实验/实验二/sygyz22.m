% 2、按今年上课人数统计本学期所上所有课程的成绩中‘优秀’，‘良好’，‘中’，‘及格’，
% ‘不及格’的人数，请自定义本学期所上所有课程的成绩并存入SUM【.txt或.xls】

% 上课人数 96
% 本学期课程：见元胞数组 subject
% 表格列：学生    行：科目
close all;clear;clc;
excel = xlsread('SUM.xls');         % xls 使用 load() 函数报错，未知原因
[NumberOfSdt,~] = size(excel);      % 增加代码通用性，设定人数为变量自动提取
subject = {'飞行器结构力学','工程数值方法','机械设计基础','航空器制造工程专业英语', ...
    '空气动力学','航空工程材料','自动控制原理','51单片机C语言教程'};

% 1）用二维饼形图分子图显示各个课程中各项所占的百分比，并抽出‘优秀’，‘良好’对应的比例。【图1】
figure
table = zeros(8,5);         % 用于存放最后结果

for i = 1:8                 % 遍历每门科目并绘图
    score = excel(:,i);     % 提取该课程的成绩
    subplot(2,4,i)
    A=0; B=0; C=0; D=0; E=0;% 初始化成绩计数器  
    for j = 1:NumberOfSdt           % 遍历每个同学
        switch (fix(score(j) / 10)) % 判别该同学该科目的评级
            case 10
                A = A+1;            % 100 优
            case 9
                A = A+1;            % 90+ 优
            case 8
                B = B+1;            % 80+ 良
            case 7
                C = C+1;            % 70+ 中
            case 6
                D = D+1;            % 60+ 及格
            otherwise
                E = E+1;            % 其余不及格
        end
    end
%     fprintf("INFO:第%d门科目统计：A:%d  B:%d  C:%d  D:%d  E:%d\tsum=%d\n",i,A,B,C,D,E,A+B+C+D+E);
    table(i,:) = [A,B,C,D,E];       % 记录统计结果
    pie(table(i,:),[1,1,0,0,0]);    % 按要求绘图，抽出优秀，良好
    title(subject(i)) 
end
% 2）将图1中的用二维饼形图的百分比显示为‘优秀’，‘良好’，‘中’，‘及格’，‘不及格’，
% 并抽出‘优秀’，‘不及格’对应的部分。【图2】
figure
j = 0;
for j = 1:8
    subplot(2,4,j)
    pie(table(j,:),[1,0,0,0,1],{'优秀','良好','中','及格','不及格'});   % 抽出优秀 不及格
    title(subject(j)) 
end
