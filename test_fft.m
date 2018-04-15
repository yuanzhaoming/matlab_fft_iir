clear;

f1=1000;%1khz
f2=4000;%4khz

fs=48000;%48khz
N=180;

n=[0:N-1];

t=n/fs;

y1=sin(2*pi*f1*t);
y2=sin(2*pi*f2*t);

y=y1+y2;

plot(t,y);











