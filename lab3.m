clc; 
clear all; 
close all; 
 
x=[1 1 0 1 1 1 0 1 1 1];
l=length(x); 
k=3; 
cnt=0; 
i=1; 
%stuffing 
while(i<=length(x)) 
 if x(i)==1 
 cnt=cnt+1; 
 else 
 cnt=0; 
 end 
 if cnt==k 
 x=[x(1:i) 0 x(i+1:end)]; 
 cnt=0; 
 end 
 i=i+1; 
end 
stuffing=x; 
i=1; 
cnt=0; 
%destuffing 
while(i<=length(x)) 
 if x(i)==1 
 cnt=cnt+1; 
 else 
 cnt=0; 
 end 
 if cnt==k 
 x=[x(1:i) x(i+2:end)]; 
 cnt=0; 
 end 
 i=i+1; 
end 
destuffing=x;