%initialisation %%
clear all
clc
clf
x = [1.8:0.2:3.4];
f = [6.050, 7.389, 9.025, 11.023, 13.464, 16.445, 20.086, 24.533, 29.964];
h = 0.2;
n = 8;
F=0.;
%%calc%%
for i=2:1:n-1
    F = F + f(i);
end
F = 2 * F;
F = F + f(1);
F = F+ f(n);
F = F * h * 0.5;
disp(F)
y=exp(x);
hold on
plot (x,f, 'red')
plot (x,y, '>')
