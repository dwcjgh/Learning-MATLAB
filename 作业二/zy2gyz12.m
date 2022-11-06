%% 2、根据已学课程知识，自己编写题目并给出答案。
% 要求：1）包含矩阵生成方法4个、提取方法3个；
% 2）矩阵的调用、修改、变形、复制；
% 3）矩阵的缩小、扩展、合并；
% 4）语句保存到*.m件；
% 5）要求及答案写入word。

% 题目：已知矩阵A=[1,2;3,4]，1_2中的大矩阵B，三行三列单位方阵D，E=[1,2,3;4,5,6;7,8,9]
% 提取B矩阵的左上角3*3作为矩阵a，首列作为向量b，首列和尾列作为矩阵d
% 修改A矩阵为[2,2;3,4]，将A变形为行向量，把矩阵A当作一个单元复制4行1列存入矩阵F
% 将B矩阵缩小为3*3矩阵,再在右侧扩大一列，数据全为1；在水平方向合并矩阵B和D存入G
% 

close all; clear; clc;
% 矩阵的生成
A = [1,2;3,4]
B = load(['1_2.txt'])
D = eye(3)
E = [1:3;4:6;7:9]
size(B)
% 矩阵的提取
a = B(1:3,1:3) % 用：提取
b = B(1:9) % 用下标注提取，单下标
d = [B(1:9);B(73:81)] % 用向量提取
% 矩阵的调用、修改、变形、复制；
E + D
A(1,1) = 2
A = reshape(A,1,4)
F = repmat(A,4,1)
% 矩阵的缩小、扩展、合并；
B
B([4:9],:) = [];
B(:,[4:9]) = []
B(1:3,4) = [1;1;1]
G = [B,D]



