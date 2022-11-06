function chengji
A=round(9*randn(125,6)+75);
for i=1:125*6
    if A(i)>=100
        A(i)=100;
    elseif A(i)<=0
        A(i)=0;
    end
end
xlswrite('³É¼¨.xlsx',A)
save('³É¼¨.txt','A','-ascii')
save ³É¼¨1.txt A -ascii