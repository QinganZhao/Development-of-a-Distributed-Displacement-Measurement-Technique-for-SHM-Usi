clear;clc;
for i = 1:5
    A=num2str(i);
    a=['a2',A,'.txt'];
    color=['m';'b';'g';'r';'k'];
    a11=load(a);
    x=a11(:,1);
    y=a11(:,2);
    plot(x,y,color(i),'MarkerSize',20,'Linewidth',2);
    set(gca,'YDir','reverse')%��Y����ת
    set(gca,'XAxisLocation','top')%x�����
    axis([-400 400 -1 2.5])
    set(gca,'FontName','Times New Roman','FontSize',10);
    xlabel('Location(cm)','fontsize',10);
    ylabel('Displacement(mm)','fontsize',10);
    grid on;
    hold on;
end
legend('����1','����2','ж��1','ж��2','ԭʼ����');