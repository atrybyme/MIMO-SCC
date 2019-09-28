for i=1:9
    c(i,:) = MIMO(i+1);
end
alu = 2:10;
t =table((2:10)',c(:,1),c(:,2),c(:,3),c(:,4),'VariableNames',{'Rate(bits/s/Hz)','RC','SM','SMP','CC'});
writetable(t, 'mydata.xlsx');
