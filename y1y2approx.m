clear all
close all
clc
x = 0.001:0.01:20;
y = sin(x - pi/2.)./x;
ya = 0.;
y1s = -x.^(-2);
y1b = -cos(x - pi/2)./x;
y2s = -3*x.^(-3);
y2b = -cos(x-pi)./x;
y1 = sqrt(pi/2.)*bessely(1.5,x)./sqrt(x);
y2 = sqrt(pi/2.)*bessely(2.5,x)./sqrt(x);
%set(0,'DefaultAxesColorOrder',[0 0 0],'DefaultAxesLineStyleOrder','-|--|:')
subplot(2,1,1)
plot(x,ya,'k-')
hold on
plot(x,y1,'k-',x,y1s,'k-.',x,y1b,'k--','linewidth',2)
axis([1 12 -.5 0.3])
fs = 14;
textx='$\rho$';
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='\(y_1(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
title('\({y_1(\rho)}\) and its approximations','Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Spherical Bessel Function $y_1(\rho)$ for $\rho \ll 1$ and $\rho \gg 1$'
%title(textt,'Interpreter','latex','FontSize',fs)
%xlabel('p')
subplot(2,1,2)
%plot(x,ya,'-',x,y2,'-',x,y2s,'-.',x,y2b,'--')
plot(x,ya,'k-')
hold on
plot(x,y2,'k-',x,y2s,'k-.',x,y2b,'k--','linewidth',2)
axis([1 12 -.5 0.3])
xlabel(textx,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Spherical Bessel Function $y_2(\rho)$ for $\rho \ll 1$ and $\rho \gg 1$'
%title(textt,'Interpreter','latex','FontSize',fs)
texty='\(y_2(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
title('\({y_2(\rho)}\) and its approximations','Interpreter','latex','FontSize',fs)
print -dpdf y1y2approx.pdf
print -depsc y1y2approx.eps
print -deps /Users/kevin/papers/math/y1y2approx