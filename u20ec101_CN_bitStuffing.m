clc;
close all;
clear all;

n=input('Enter length of bits')
x=randi([0,1],1,n);
l=length(x);
disp(x);

count=0;
p=0;
for i=1:length(x)
    if(x(i)==1)
        count=count+1;
    else 
        count=0;
    end
    if(count==3)
        x=[x(1:i) 0 x(i+1:end)];
        count=0;
        p=p+1;
    end
end
x
lout=length(x)
for i=1:length(x)-p
    if(x(i)==1)
        count=count+1;
    else
        count=0;
    end
    if(count==3)
        x=[x(1:i) x(i+2:end)];
        count=0;
    end
end
        