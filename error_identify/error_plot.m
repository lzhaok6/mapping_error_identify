clear all
clc
data1=load('structure_0.2_output.txt');
data2=load('structure_0.3_output.txt');
data3=load('structure_0.4_output.txt');
% error1=data1(:,1); 
% error2=data2(:,1);
% error3=data3(:,1);
ct1=1;ct2=1;ct3=1;
for i=1:1:size(data1(:,1),1)
    if i==5*(ct1-1)+1
        error1(ct1,2)=data1(i,2);
        ct1=ct1+1;
    end
    if i==5*(ct2-1)+2
        error1(ct2,3)=data1(i,3);
        ct2=ct2+1;
    end
    if i==5*(ct3-1)+3
        error1(ct3,1)=data1(i,1);
        ct3=ct3+1;
    end
end

ct1=1;ct2=1;ct3=1;
for i=1:1:size(data2(:,1),1)
    if i==5*(ct1-1)+1
        error2(ct1,2)=data2(i,2);
        ct1=ct1+1;
    end
    if i==5*(ct2-1)+2
        error2(ct2,3)=data2(i,3);
        ct2=ct2+1;
    end
    if i==5*(ct3-1)+3
        error2(ct3,1)=data2(i,1);
        ct3=ct3+1;
    end
end

ct1=1;ct2=1;ct3=1;
for i=1:1:size(data3(:,1),1)
    if i==5*(ct1-1)+1
        error3(ct1,2)=data3(i,2);
        ct1=ct1+1;
    end
    if i==5*(ct2-1)+2
        error3(ct2,3)=data3(i,3);
        ct2=ct2+1;
    end
    if i==5*(ct3-1)+3
        error3(ct3,1)=data3(i,1);
        ct3=ct3+1;
    end
end

dir=2;
error1(113,dir)=0;
error3(108,dir)=0;
avg1=sum(abs(error1(:,dir)))/size(error1(:,dir),1);
avg2=sum(abs(error2(:,dir)))/size(error2(:,dir),1);
avg3=sum(abs(error3(:,dir)))/size(error3(:,dir),1);
figure(1)
plot(error1(:,dir),'-.r','LineWidth',1);
hold on 
grid on 
plot(error2(:,dir),'-.b','LineWidth',1);
hold on 
plot(error3(:,dir),'-.g','LineWidth',1);
h_legend=legend(strcat('0.2m (avg: ',num2str(avg1),')'),strcat('0.3m (avg: ',num2str(avg2),')'), strcat('0.4m (avg: ',num2str(avg3),')'));
set(h_legend,'FontSize',20);
lb1=xlabel('time step');
lb2=ylabel('percentage error');
set(lb1,'FontSize',20);
set(lb2,'FontSize',20);
ylim([-50,50]);
% grid on 
