format compact
clear
clc
fprintf('12.5%% of 1234 equals %.3f\n',0.125*1234);
fprintf('This is a backslash character: \\\n');
fprintf('How about a single quote ('')?\n');
fprintf('%d lb butter, %d tbsp cocoa, %d cps flour, and %d cps sugar\n',1,8,4,4);
fprintf('%d lb butter, %d tbsp cocoa, %d cps flour, and %d cps sugar\n',1,8,4); % will terminate before printing the third argument
fprintf('%d lb butter, %d tbsp cocoa, %d cps flour, and %d cps sugar\n',1,8,4,4,9); % will go back to the first escape character (%)
fprintf('%4.1f\n',[1 2 3 4 5 6]);


