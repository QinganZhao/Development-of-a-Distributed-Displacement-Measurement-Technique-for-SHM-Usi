clear;clc;
%������;
load chuanganqi.txt
vari=chuanganqi(:,1);
freq=50;                   %���ݲ���Ƶ���趨freq�Ĵ�С
figure;
h=plot(vari); hold on
xlabel('�����ݸ���');
ylabel('����ֵ');
title('ԭʼ����ͼ')
%x=get(h,'xdata');
%y=get(h,'ydata');
%imin=find(min(y)==y);
%imax=find(max(y)==y);
%text(x(imin),y(imin),['min=',num2str(y(imin))],'fontsize',15)
%text(x(imax),y(imax),['max=',num2str(y(imax))],'fontsize',15)


%��ȡ��������ת��Ϊʱ���С
vari=vari(1:3000);
vari1=vari(1:1);
n=length(vari);
time=(0:n-1)/freq;
vari2=mean(vari1);
vari3=2.5*10*(vari/1000+1)-2.5*10*(vari2/1000+1);
figure;



%{
for i = 1:n
    if vari3(i,1)>3.55
        vari3(i,1) = rand(1)*0.05+3.52;
    end
end
for i = 6450:6570
    if vari3(i,1)>2.64
        vari3(i,1) = rand(1)*0.05+2.59;
    end
end
for i = 8046:8119
    if vari3(i,1)<1.345
        vari3(i,1) = rand(1)*0.05+1.32;
    end
end
for i = 9935:10190
    if vari3(i,1)<1.396
        vari3(i,1) = rand(1)*0.05+1.37;
    end
end
%}


h=plot(time,vari3,'b');%%%%%%%%%
grid on
set(gca,'FontName','Times New Roman','FontSize',21);
set(gcf,'color','w');
xlabel('Time(s)','fontsize',21);
ylabel('Displacement(mm)','fontsize',21);

hold on;



%�ֻ�
%clear;clc;
load v2.txt;
Hour=v2(:,3);
Minute=v2(:,4);
Second=v2(:,5);
dx=v2(:,6);
dy=v2(:,7);
%accz=acc5(:,9);


interval=datenum(0,0,0,Hour,Minute,Second);
t00 = Minute*60+Second-525.2+12.1;%��һ���ںϳ�ʱ�����˹�������
interval = t00;


figure;
dx = dy;%%%%%%y����;
dx1=dx(1:30);
dx2=mean(dx1);
dx3=(dx-dx2)*(-0.5);
%dx30 = smooth(interval,dx3,10);
plot(interval,-dx3,'r');%%%%%%%%%
%x=interval;
%axis([5,15,-15,15]);%
%datetick('x','HH:MM:SS');
set(gca,'FontName','Times New Roman','FontSize',10);
set(gcf,'color','w');
xlabel('Time','fontsize',10);
ylabel('Displacement(mm)','fontsize',10);
grid on;
legend('������','�ֻ�');

%axis([8,195,-1,4]);




