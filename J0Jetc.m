clear all
close all
clc
x = 0.0:0.01:20;
ya = 0.;
J0 = besselj(0,x);
J1 = besselj(1,x);
J2 = besselj(2,x);
J3 = besselj(3,x);
J4 = besselj(4,x);
J5 = besselj(5,x);
subplot(2,1,1)
plot(x,ya,'k-','linewidth',1)
hold on
plot(x,J0,'k-',x,J1,'k-.',x,J2,'k--','linewidth',2)
axis([0 12 -0.5 1.1])
fs = 14; ts= 12;
textx='$\rho$';
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='\(J_{0,1,2}(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Bessel Functions $J_0(\rho)$, $J_1(\rho)$, and $J_2(\rho)$'
title('\(J_0(\rho), \, J_1(\rho), \, J_2(\rho)\)','Interpreter','latex','FontSize',ts)
%text('Interpreter','latex','String','$$\rho$$','Position',[6.9,-0.83],'FontSize',12)
subplot(2,1,2);
plot(x,ya,'k-','linewidth',1)
hold on
plot(x,J3,'k-',x,J4,'k-.',x,J5,'k--','linewidth',2)
axis([0 12 -0.4 0.5])
xlabel(textx,'Interpreter','latex','FontSize',fs)
texty='\(J_{3,4,5}(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
title('\(J_3(\rho), \, J_4(\rho), \, J_5(\rho)\)','Interpreter','latex','FontSize',fs)
print -dpdf J0Jetc.pdf
print -depsc J0Jetc.eps
print -deps /Users/kevin/papers/math/J0Jetc
%text('Interpreter','latex','String','$$\rho$$','Position',[6.9,-0.59],'FontSize',12)