clf;
fs=10000;N=1024;                      %采样频率和数据点数
n=0:N-1;t=n/fs;                     %时间序列
%x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %信号
%x=randn(1,N);
x=zeros(1,N);
x(1)=1;

subplot(3,1,1),plot(t,x);
xlabel('时间');
ylabel('幅度');
title('冲激函数');

y=fft(x,N);                     %对信号进行快速Fourier变换
mag=abs(y);                     %求得Fourier变换后的振幅
f=n*fs/N;                       %频率序列

subplot(3,1,2),plot(f,mag);     %绘出随频率变化的振幅
xlabel('频率');
ylabel('声压');
title('幅频响应');

f1=1000;
f3=2000;

Wp=f1/(fs/2); 
Ws = f3/(fs/2);
Rp = 1;
Rs=30;

[NN,Wp]=cheb1ord(Wp,Ws,Rp,Rs);
[b,a]=cheby1(NN,Rp,Wp);
yN = filter(b,a,x); 
subplot(3,1,3),plot(t,yN);

