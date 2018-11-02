clear all
close all
clc

n = 0.; v = 10.;
f=@(x)besselj(n,x).*bessely(n,v*x)-besselj(n,v*x).*bessely(n,x)
x=linspace(0,5,1000);
figure
plot(x,f(x)) % we use the figure to guess at the roots
grid on
options=optimset('tolx',1e-9);
fzero(f,0.3) % we tell fzero to look near 0.3
fzero(f,0.7)
fzero(f,1)