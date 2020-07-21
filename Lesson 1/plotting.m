% help plot % document of plot function
% t = 0:pi/50:10*pi;
% plot3(sin(t),cos(t),t) % to plot in 3D
clc
clear
x = [1 3 10];
y = [2,-4.2,12.3];
plot(x,y)
length([1;4;5])
plot(x,y,'*') % to put * at each point
% doc plot % to get online doc
plot(x,y,'rs') % s for square and r for red color
grid on % to turn on grid , we can turn off by grid off command
xlabel('Selection')
ylabel('Change')
title('Changes in Selections during the Past Year')
axis([0 12 -10 20]) % to reset the axis 0 for left, 12 for right, -10 for bottom, 20 for top
figure % to make new figure
bar(x,y)
pie(x,y)
pie([4 2 7 4 7])
axis off % to remove the axis
close(2) % close figure 2, cloase all for closing all figures