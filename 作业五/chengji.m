function chengji
A=round(9*randn(125,6)+75);
for i=1:125*6
    if A(i)>=100
        A(i)=100;
    elseif A(i)<=0
        A(i)=0;
    end
end
xlswrite('�ɼ�.xlsx',A)
save('�ɼ�.txt','A','-ascii')
save �ɼ�1.txt A -ascii