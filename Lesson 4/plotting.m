format compact
clear
clc
a = (1:10).^2
plot(a)
a = (-10:10).^2
figure(2)
plot(a)
t = -10:10
b = t.^2
figure
plot(t,b,'m--o')

x1 = 0 : 0.1 : 2*pi; y1 = sin(x1);
x2 = pi/2 : 0.1 : 3*pi; y2 = cos(x2);
figure
plot(x1,y1,'r',x2,y2,'k:') % r for red , k for black , : for dot curve
% hold on % to replot on the active figure withought ckearing the current
% plotted curve
legend('sine','cosine')
