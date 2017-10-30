clear;clc;
num = 5;
x0 = [-214,-107,0,107,214];
dis = [];
for i = 1:num
A = num2str(i);
a = ['no',A,'.txt'];
color = ['k';'b';'g';'m';'r'];
a1 = load(a);
Hour=a1(:,2);
Minute=a1(:,3);
Second=a1(:,4);
dy=a1(:,5);
interval=datenum(0,0,0,Hour,Minute,Second);
t00 = Minute*60+Second-545;%��һ���ںϳ�ʱ�����˹�������
interval = t00;
dy1=dy(1:30);
dy2=mean(dy1);
dy3=(dy-dy2)*0.5;
dy4=dy3;
%%%%%%----------�ľ���------------%
%%%%NNN=1�������,���������ݽ����κδ���;
NNN = 1;
disp('1');
interval = interval(1:NNN:end,1);
disp('2');
dy4 = dy4(1:NNN:end,1);
disp('3');
%%%%%%----------�ľ���------------%
x = zeros(1,length(interval));
x = (x+x0(i))';
dis = [dis,-dy4];
hold on;
end
dy4 = zeros(1,length(interval));
dis = [dis,-dy4'];
dy4 = zeros(1,length(interval));
dis = [dis,-dy4'];
time = interval';
pos = [-214,-107,0,107,214,-350,350];
[xx,yy] = meshgrid(pos,time);
zz = dis;
%�������������ԣ�������ͼ������һ��...��������= =
mesh(xx,yy,zz);%%��ͼ����ѡ��1;
set(gca,'ZDir','reverse')%��y����ת
%{%��ͼ����ѡ��2;
surf(xx,yy,zz);
shading interp;
%}
y=interval;
%datetick('y','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Position','fontsize',10);
ylabel('Time','fontsize',10);
zlabel('Displacement(mm)','fontsize',10);
grid on;
hold on;
%%legend('No.1','No.2','No.3','No.4','No.5','No.6','No.7');
