clear all;
clc;

signal = csvread('C:\Users\Administrador\Desktop\wavelib\test\signal.txt');

wrcoef_c_d1 = csvread('C:\Users\Administrador\Desktop\wavelib\test\dwt_output_file_d1.txt');
wrcoef_c_d2 = csvread('C:\Users\Administrador\Desktop\wavelib\test\dwt_output_file_d2.txt');
wrcoef_c_d3 = csvread('C:\Users\Administrador\Desktop\wavelib\test\dwt_output_file_d3.txt');

wrcoef_c_a3 = csvread('C:\Users\Administrador\Desktop\wavelib\test\dwt_output_file_a3.txt');

[c,l] = wavedec(signal,3,'db4');

a3 = wrcoef('a',c,l,'db4',3);
a2 = wrcoef('a',c,l,'db4',2);
a1 = wrcoef('a',c,l,'db4',1);

d3 = wrcoef('d',c,l,'db4',3);
d2 = wrcoef('d',c,l,'db4',2);
d1 = wrcoef('d',c,l,'db4',1);

for i = 1:3
    d(i,:) = wrcoef('d',c,l,'db4',i);
end

rec = waverec(c,l,'db4');