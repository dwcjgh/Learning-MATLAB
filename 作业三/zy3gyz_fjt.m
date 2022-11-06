%% 作业3附加题
% 绘制飞机航迹图，数据自拟，方位自拟

%% 初始化参数
close all; clear; clc;
m = 30;n = 30;
Spoint = [3, 10];	  %起始点坐标
Epoint = [29, 22];	%目标点坐标

%% 构建地图
for i = 1:m+2
    if i == 1
        for j = 1:n+2
            Matrix(i,j) = -inf;
        end
    elseif i == m+2
        for j = 1:n+2
            Matrix(i,j) = -inf;
        end
    else
        for j = 1:n+2
            if ((j == 1)|(j == n+2))
                Matrix(i,j) = -inf;
            else
                Matrix(i,j) = inf;
            end
        end
    end
end
%%障碍
for j=2:30
    Matrix(5,j)=-inf;
    for j=2:6
        Matrix(24,j)=-inf;
        for j=9:31
            Matrix(10,j)=-inf;
            for j=20:25
                Matrix(15,j)=-inf;
                for j=5:20
                    Matrix(20,j)=-inf;
                    for j=18:20
                        Matrix(28,j)=-inf;
                        for i=4:6
                            Matrix(i,18)=-inf;
                            for i=17:20
                                Matrix(i,5)=-inf;
                                for i=23:25
                                    Matrix(i,20)=-inf;
                                    for i=13:17
                                        Matrix(i,13)=-inf;
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

% 显示地图
%subplot(2,2,1);
h1 = plot(Spoint(1),Spoint(2),'gO');
hold on
h2 = plot(Epoint(1),Epoint(2),'rO');

%% 寻路
Matrix(Spoint(1),Spoint(2))=0;
Matrix(Epoint(1),Epoint(2))=inf;
G=Matrix;
F=Matrix;
openlist=Matrix;
closelist=Matrix;
parentx=Matrix;
parenty=Matrix;
openlist(Spoint(1),Spoint(2)) =0;

for i = 1:n+2
    for j = 1:m+2
        k = Matrix(i,j);
        if(k == -inf)
            h3 = plot(i,j,'k.');
        end
        hold on
    end
end
axis([0 m+3 0 n+3]);
plot(Epoint(1),Epoint(2),'b+');
plot(Spoint(1),Spoint(2),'b+');
while(1)
    num=inf;
    for p=1:m+2
        for q=1:n+2
            if(openlist(p,q)==0&&closelist(p,q)~=1)
                Outpoint=[p,q];
                if(F(p,q)>=0&&num>F(p,q))
                    num=F(p,q);
                    Nextpoint=[p,q];
                end
            end
        end
    end
    closelist(Nextpoint(1),Nextpoint(2))=1;
    for i = 1:3
        for j = 1:3
            k = G(Nextpoint(1)-2+i,Nextpoint(2)-2+j);
            if(i==2&&j==2|closelist(Nextpoint(1)-2+i,Nextpoint(2)-2+j)==1)
                continue;
            elseif (k == -inf)
                G(Nextpoint(1)-2+i,Nextpoint(2)-2+j) = G(Nextpoint(1)-2+i,Nextpoint(2)-2+j);
                closelist(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=1;
            elseif (k == inf)
                distance=((i-2)^2+(j-2)^2)^0.5;
                G(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=G(Nextpoint(1),Nextpoint(2))+distance;
                openlist(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=0;
                % H=((Nextpoint(1)-2+i-Epoint(1))^2+(Nextpoint(2)-2+j-Epoint(2))^2)^0.5;%欧几里德距离启发函数
                H_diagonal=min(abs(Nextpoint(1)-2+i-Epoint(1)),abs(Nextpoint(2)-2+j-Epoint(2)));%比较复杂的对角线启发函数
                H_straight=abs(Nextpoint(1)-2+i-Epoint(1))+abs(Nextpoint(2)-2+j-Epoint(2));
                H=sqrt(2)*H_diagonal+(H_straight-2*H_diagonal);


                % H=max(abs(Nextpoint(1)-2+i-Epoint(1)),abs(Nextpoint(2)-2+j-Epoint(2)));%比较简单的对角线函数

                F(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=G(Nextpoint(1)-2+i,Nextpoint(2)-2+j)+H;
                parentx(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=Nextpoint(1);
                parenty(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=Nextpoint(2);
            else distance=((i-2)^2+(j-2)^2)^0.5;
                if(k>(distance+G(Nextpoint(1),Nextpoint(2))))
                    k=distance+G(Nextpoint(1),Nextpoint(2));
                    % H=((Nextpoint(1)-2+i-Epoint(1))^2+(Nextpoint(2)-2+j-Epoint(2))^2)^0.5;  %欧几里德距离启发函数
                    H_diagonal=min(abs(Nextpoint(1)-2+i-Epoint(1)),abs(Nextpoint(2)-2+j-Epoint(2)));%比较复杂的对角线启发函数
                    H_straight=abs(Nextpoint(1)-2+i-Epoint(1))+abs(Nextpoint(2)-2+j-Epoint(2));
                    H=sqrt(2)*10*H_diagonal+10*(H_straight-2*H_diagonal);


                    % H=max(abs(Nextpoint(1)-2+i-Epoint(1)),abs(Nextpoint(2)-2+j-Epoint(2)));%比较简单的对角线函数

                    F(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=k+H;
                    parentx(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=Nextpoint(1);
                    parenty(Nextpoint(1)-2+i,Nextpoint(2)-2+j)=Nextpoint(2);
                end
            end
            if(((Nextpoint(1)-2+i)==Epoint(1)&&(Nextpoint(2)-2+j)==Epoint(2))|num==inf)
                parentx(Epoint(1),Epoint(2))=Nextpoint(1);
                parenty(Epoint(1),Epoint(2))=Nextpoint(2);
                break;
            end
        end
        if(((Nextpoint(1)-2+i)==Epoint(1)&&(Nextpoint(2)-2+j)==Epoint(2))|num==inf)
            parentx(Epoint(1),Epoint(2))=Nextpoint(1);
            parenty(Epoint(1),Epoint(2))=Nextpoint(2);
            break;
        end
    end
    if(((Nextpoint(1)-2+i)==Epoint(1)&&(Nextpoint(2)-2+j)==Epoint(2))|num==inf)
        parentx(Epoint(1),Epoint(2))=Nextpoint(1);
        parenty(Epoint(1),Epoint(2))=Nextpoint(2);
        break;
    end
end
P=[];
s=1;
while(1)
    if(num==inf)
        break;
    end
    h4 = plot(Epoint(1),Epoint(2),'b+');

    P(s,:)=Epoint;
    s=s+1;
    %      pause(1);
    xx=Epoint(1);
    Epoint(1)=parentx(Epoint(1),Epoint(2));
    Epoint(2)=parenty(xx,Epoint(2));
    if(parentx(Epoint(1),Epoint(2))==Spoint(1)&&parenty(Epoint(1),Epoint(2))==Spoint(2))
        plot(Epoint(1),Epoint(2),'b+');
        P(s,:)=Epoint;
        break;
    end
end
P(s+1,:)=Spoint;
legend([h1,h2,h3,h4],'起始点','目标点','障碍物','航迹点');

count=0;
for i=2:12
    for j=2:12
        if(G(i,j)~=inf&&G(i,j)~=-inf)
            count=count+1;
        end
    end
end
count

% 将得到的折现曲线拟合成光滑的曲线
P=P';
a=[];
b=[];
a=P(1,:);
b=P(2,:);
figure
plot(a,b);
axis([0,n+3,0,n+3]);

values = spcrv([[a(1) a a(end)];[b(1) b b(end)]],3);
figure
plot(values(1,:),values(2,:),'r--','LineWidth',2);
title('飞机平滑航迹图')
axis([0,m+3,0,m+3]);
