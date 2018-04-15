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

subplot(2,1,1);
plot(t,y)
xlabel('time (t)')
ylabel('am')
title('{\bf origin wave}')


FFTN= 100;
xn=zeros(1,FFTN);

subplot(2,1,2);
plot(t,y1)
xlabel('Frequency (Hz)')
ylabel('Power')
title('{\bf Periodogram}')












