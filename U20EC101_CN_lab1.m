clc;
clear all;
close all;
msg=[1 0 0 1];
divisor=[1 0 1 1];
msg_len=length(msg);
div_len=length(divisor);
k=div_len-1;
n=msg_len+k;
codeword= [msg zeros(1,k)];
for l=1:n-k
    codeword(l:l+k)=bitxor(codeword(l:l+k), divisor.*codeword(l));
end
remainder=codeword(n-k+1:n);
final_codeword=[msg remainder];

received_codeword=awgn(final_codeword, 9);
received_codeword=im2bw(round(received_codeword));

for l=1:n-k
    received_codeword(l:l+k)=bitxor(received_codeword(l:l+k), divisor.*received_codeword(l));
end

syndrom=received_codeword(n-k+1:n)
syndrom
if(sum(syndrom))
    disp('Error')
else
    disp('No Errror')
end