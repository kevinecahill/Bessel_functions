clear all
close all
clc
sf = 16; 
load J1Zeros5.dat;

x = 0.499:0.0000001:0.501;
y = 0.0;
for k = 1: 100000
    y = y + (2.*x).^(1/2).*besselj(1,J1Zeros5(k,2).*x) ...
        .*besselj(1,J1Zeros5(k,2)./2)./(besselj(2,J1Zeros5(k,2)).^2) ; 
end

z = 0.0;
for k = 1: 100000
    z = z + besselj(1,J1Zeros5(k,2)./2).^2./(besselj(2,J1Zeros5(k,2)).^2);
end
z
ymax = 1.1*z

plot(x,y,'k-','LineWidth',0.5)
textx='$x$';
xlabel(textx,'Interpreter','latex','fontsize',sf)
texty='$J_1$ series for $\delta (x-\scriptstyle{1/2})$';
ylabel(texty,'Interpreter','latex','fontsize',sf)
%textt='100,000-term Bessel series for Dirac''s delta function';
%title('100,000-term Bessel series for Dirac''s delta function');
axis([0.499 0.501 -25000 105000])
print -deps /Users/kevin/papers/math/BesselDirac/BesselJ1Diracf1051tsf2
print -deps /Users/kevin/papers/math/BesselJ1Diracf1051tsf3
