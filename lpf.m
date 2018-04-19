clf;
fs=10000;N=1024;                      %����Ƶ�ʺ����ݵ���
n=0:N-1;t=n/fs;                     %ʱ������
%x=0.5*sin(2*pi*15*t)+2*sin(2*pi*40*t); %�ź�
%x=randn(1,N);
x=zeros(1,N);
x(1)=1;

subplot(3,1,1),plot(t,x);
xlabel('ʱ��');
ylabel('����');
title('�弤����');

y=fft(x,N);                     %���źŽ��п���Fourier�任
mag=abs(y);                     %���Fourier�任������
f=n*fs/N;                       %Ƶ������

subplot(3,1,2),plot(f,mag);     %�����Ƶ�ʱ仯�����
xlabel('Ƶ��');
ylabel('��ѹ');
title('��Ƶ��Ӧ');

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

