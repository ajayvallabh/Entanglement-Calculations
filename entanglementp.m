num=xlsread('entanglementdata');
j=1;
for i=1:89792
num(i,6)=j;
    if ((num(i,5)~=0) && (num(i,5)~=1))
      j=j+1;
    end
end
num( any(ismissing(num),2), :) = [];
L = length(num)
for i=1:L
num(i,7)=i;
if((num(i,6)>0)&&(num(i,6)<=300))
    num(i,8)=1;
elseif ((num(i,6)>300)&&(num(i,6)<=12800))
    num(i,8)=2;
elseif((num(i,6)>12800)&&(num(i,6)<=13100))
    num(i,8)=3;
else
    num(i,8)=4;
end
end
