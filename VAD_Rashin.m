clc
clear
% [x1]=audioread('F:\matlab\bin\- 1.wav'); % ???????? ?????
[x1]=audioread('F:\matlab\bin\- 1.wav');
Window=10;
m=length(x1);
for i=1:m-Window
j=i-1;
S=0;
for k=1:Window
S=S+x1(j+k);
end
S=S/Window;
x2(i)=x1(i)-S;
end

a=1000;
m=length(x1);
t=floor(m/a)-1;
h=0;
k=a;
y1=zeros(1,m);
for i=1:a
h=h+x2(i)^2;
end

for i=2:t
S1=0;
for j=1:a
k=k+1;
S1=S1+x2(k)^2;
end
if S1>h*2
for z=(((i-1)*a)+1):k
y1(z)=x1(z);
end
else
end
end
figure(1)
hold on
plot(x1)
plot(y1,'r')
hold off