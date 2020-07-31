format compact
clear
clc
pwd
['C:', strrep(pwd,'/','\')] % string replace / with \
contents = ls;
contents
who contents
cd('..')
ls
ls('Lesson 7')
cd('Lesson 8')

temp = xlsread('Nashville_climate_data.xlsx')
[temp text]= xlsread('Nashville_climate_data.xlsx')
[~, text] = xlsread('Nashville_climate_data.xlsx')
[~, ~, everything] = xlsread('Nashville_climate_data.xlsx')
num = xlsread('Nashville_climate_data.xlsx',1,'D15')
num = xlsread('Nashville_climate_data.xlsx',1,'D15:E17')


header = 'Data requested on Pi Day (3/14/15)';
Vega = [8 7 -145];
VLA = [1000 2000 700 0 48];
W9GFO = [1.45e8 34e6 4e7 -1e8];
custom_write_bin(header,Vega,VLA,W9GFO,'Arecibo.dat')
[o1 o2 o2 o4] = custom_read_bin('Arecibo.dat')



