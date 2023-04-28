clc;
clear all;
close all;
text = 'I am Anand Gupta U20EC001 who works on language named after fungus and now part of community fork called CrabLang';
p = 61;
q = 53;
n = p*q;
phi = lcm((p-1),(q-1));
e=7;
d=1;
while 1
     if mod(e*d, phi) ==1
        break
     end
     d=d+1;
end
text = double(text);
encrypt=powermod(text,e,n);
encrypted_data = char(encrypt);
display(encrypted_data);
t=double(encrypted_data);
decrypt=powermod(t,d,n);
decrypted_data = char(decrypt);
display(decrypted_data);
t=double(decrypted_data);