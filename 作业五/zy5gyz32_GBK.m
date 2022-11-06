% 换硬币
% 将一笔零钱换成5分、2分和1分的硬币，要求每种硬币至少有一枚，有几种不同的换法？

close all;clear;clc;
mon = input('输入在一行中给出待换的零钱数额x∈(8,100):');
% 	输入在一行中给出待换的零钱数额x∈(8,100)。
cnt = 0;
for i = 20:-1:1
    for j = 50:-1:1
        for k = 100:-1:1
            %fprintf("尝试五分钱数量:%d, 二分钱数：:%d, 一分钱数：:%d\n",i,j,k);
            if(mon == i*5 + j*2 + k*1)
                fprintf("五分钱数量:%d, 二分钱数量:%d, 一分钱数量:%d, 总计:%d\n",i,j,k,i+j+k);
                cnt = cnt + 1;
                break;
            end
        end
    end
end

disp(['换法总计 ',num2str(cnt), ' 种'])
