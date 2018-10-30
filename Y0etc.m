clear all
close all
clc
x = 0.0:0.01:20;
ya = 0.;
y0 = bessely(0,x);
y1 = bessely(1,x);
y2 = bessely(2,x);
y3 = bessely(3,x);
y4 = bessely(4,x);
y5 = bessely(5,x);
subplot(2,1,1)
plot(x,ya*ones(size(x)),'k-')
hold on
plot(x,y0,'k-',x,y1,'k-.',x,y2,'k--','linewidth',2)
fs = 14
texty='\(Y_{0,1,2}(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
textx='$\rho$';
xlabel(textx,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Bessel Functions of the Second Kind $Y_0(\rho)$, $Y_1(\rho)$, $Y_2(\rho)$'
title('\(Y_0(\rho), \, Y_1(\rho), \, Y_1(\rho)\)','Interpreter','latex','FontSize',fs)
axis([0 12 -1.0 0.6])
subplot(2,1,2);
x = 0.0:0.01:20;
ya = 0.;
plot(x,ya*ones(size(x)),'k-')
hold on
plot(x,y3,'k-',x,y4,'k-.',x,y5,'k--','linewidth',2)
xlabel(textx,'Interpreter','latex','FontSize',fs)
%textt='$\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!\!$The Bessel Functions of the Second Kind $Y_3(\rho)$, $Y_4(\rho)$, $Y_5(\rho)$'
title('\(Y_3(\rho), \, Y_4(\rho), \, Y_5(\rho)\)','Interpreter','latex','FontSize',fs)
texty='\(Y_{3,4,5}(\rho)\)';
ylabel(texty,'Interpreter','latex','FontSize',fs)
axis([2 14 -1.0 0.5])
print -dpdf Y0etc.pdf
print -depsc Y0etc.eps
print -deps /Users/kevin/papers/math/Y0etc