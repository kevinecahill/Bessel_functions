clear all
close all
clc
fs = 14; sf = 16; bf = 16;
load('data1');
i = 1: 1: 314;
plot(data1(i,1),data1(i,2),'-k','LineWidth',2)
axis([0 pi 1.0e13 2.2e13])
textx=('$\theta$');
xlabel(textx,'Interpreter','latex','fontsize',bf)
xticks([0 pi/4 pi/2 3*pi/4 pi])
xticklabels({'0', '\pi/4', '\pi/2', '3\pi/4', '\pi'})
texty=('$\frac{dP}{d\Omega}$ for $v/c = 0.1$');
ylabel(texty,'Interpreter','latex','fontsize',fs)
text('Interpreter','latex','String','$v/c = 0.1$','Position',[1.35, 1.07e13], ...
    'FontSize',bf)
text('Interpreter','latex','String','$v/c = 0.9$','Position',[1.35, 2.12e13], ...
    'FontSize',bf)
hold on
yyaxis right
axis([0 pi 0 8.0e18])
load('data9');
i = 1: 1: 314;
plot(data9(i,1),data9(i,2),'--k','LineWidth',2)
texty=('$\frac{dP}{d\Omega}$ for $v/c = 0.9$');
ylabel(texty,'Interpreter','latex','fontsize',fs)
%title('Bremsstralung at angle \theta from z axis for v/c = 0.1 and 0.9', 'FontSize', 14)
print -deps /Users/kevin/papers/math/bremsstralung/betas
print -deps /Users/kevin/papers/math/betas