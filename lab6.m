clc;
close all;
clear all;
file=fileread('test.txt');
n=strlength(file);
%Xoring to encrypt data end
for i=1:1:n
     encrypt(i)=bitxor(int32(file(i)),i+17);
     encripted_data=char(encrypt);
     display(encripted_data);
     n=strlength(encripted_data);
end
%Xoring again to decrypt data
for i=1:1:n
    decrypt(i)=bitxor(int32(encripted_data(i)),i);
end
decripted_data=char(decrypt);
display(decripted_data);