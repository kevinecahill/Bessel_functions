clear all
close all
clc
x = 0.001:0.01:20;
y = sin(x - pi/2.)./x;
ya = 0.;
y1 = x./3.;
y2 = sin(x - pi)./x;
y3 = x.^2/15.;
J1 = sqrt(pi/2.)*besselj(1.5,x)./sqrt(x);
J2 = sqrt(pi/2.)*besselj(2.5,x)./sqrt(x);
%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|--|:')
subplot(2,1,1)
fs = 14;
plot(x,ya,'k-','linewidth',1)
hold on
plot(x,J1,'k',x,y1,'k--',x,y,'k-.','linewidth',2)
axis([0 12 -0.5 0.5])
textx='$\rho$';
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='$j_1(\rho)$';
ylabel(texty,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Spherical Bessel Function $j_1(\rho)$ for $\rho \ll 1$ and $\rho \gg 1$'
title('\({j_1(\rho)}\) and its approximations','Interpreter','latex','FontSize',fs)
%text('Interpreter','latex','String','$$j_1(\rho)$$','Position',[6.5,0.3],'FontSize',12)
%text('Interpreter','latex','String','$$\rho$$','Position',[7.0,-0.7],'FontSize',12)
subplot(2,1,2)
plot(x,ya,'k-','linewidth',1)
hold on
plot(x,J2,'k',x,y3,'k--',x,y2,'k-.','linewidth',2)
axis([0 12 -0.5 0.5])
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='$j_2(\rho)$';
ylabel(texty,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Spherical Bessel Function $j_2(\rho)$ for $\rho \ll 1$ and $\rho \gg 1$'
%title(textt,'Interpreter','latex','FontSize',fs)
%title('\({j_2(\rho)}\) and its approximations')
title('\({j_2(\rho)}\) and its approximations','Interpreter','latex','FontSize',fs)
%text('Interpreter','latex','String','$$j_2(\rho)$$','Position',[6.5,0.3],'FontSize',12)
%text('Interpreter','latex','String','$$\rho$$','Position',[7.0,-0.7],'FontSize',12)
print -dpdf j1j2approx.pdf
print -depsc j1j2approx.eps
print -deps /Users/kevin/papers/math/j1j2approx