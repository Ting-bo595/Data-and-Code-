clear;clc;
%画Viyaru_CP的温度剖面
load CP_Viyaru.dat;
f1 = figure(1);
set(f1,'Color','w');
Times=[0.15,6.05,13.21,20.35,5.14,13.37,17.50,2.35];
for k=1:length(Times)
    if k<=4
        subplot(2,6,1);
        index=find(CP_Viyaru(:,6)==Times(k));
        water_temperature=CP_Viyaru(index,end-1);
        plot(water_temperature,5*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,2);
        index=find(CP_Viyaru(:,6)==Times(k));
        water_temperature=CP_Viyaru(index,end-1);
        plot(water_temperature,5*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end
subplot(2,6,1);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('15/5 00:15','15/5 06:05','15/5 13:21','15/5 20:35','Fontsize',9); 
text(28,-120,'CP route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(a)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
subplot(2,6,2);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('16/5 05:14','16/5 13:37','16/5 17:50','17/5 02:35','Fontsize',9); 
text(28,-120,'CP route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(b)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

%
clear;clc;
load PK_Viyaru.dat;
Times=[20.17, 6.36, 11.45, 17.05, 22.20, 3.29, 13.19, 15.55];
for k=1:length(Times)
    if k<=3
        subplot(2,6,3);
        index=find(PK_Viyaru(:,6)==Times(k));
        water_temperature=PK_Viyaru(index,end-1);
        water_temperature(1)=water_temperature(2);
        plot(water_temperature,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,4);
        index=find(PK_Viyaru(:,6)==Times(k));
        water_temperature=PK_Viyaru(index,end-1);
        water_temperature(1)=water_temperature(2);
        plot(water_temperature,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end
subplot(2,6,3);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('18/5 20:17','19/5 06:36','19/5 11:45','Fontsize',9); 
text(28,-120,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(c)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
subplot(2,6,4);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('19/5 17:05','19/5 22:20','20/5 03:29','20/5 13:19','20/5 15:55','Fontsize',9); 
text(28,-120,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(d)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

%
clear;clc;
load PK_Viyaru.dat;
Times=[20.17, 6.36, 11.45, 17.05, 22.20, 3.29, 13.19, 15.55];
for k=1:length(Times)
    if k<=3
        subplot(2,6,5);
        index=find(PK_Viyaru(:,6)==Times(k));
        water_salinity=PK_Viyaru(index,end);
        plot(water_salinity,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,6);
        index=find(PK_Viyaru(:,6)==Times(k));
        water_salinity=PK_Viyaru(index,end);
        plot(water_salinity,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end
subplot(2,6,5);
ylim([-150 0]);yticks([-150:30:0]);
xlim([30 35]);xticks([30:1:35]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water salinity (psu)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('18/5 20:17','19/5 06:36','19/5 11:45','Fontsize',9); 
text(31,-60,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(30.2,-15,'(a)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
subplot(2,6,6);
ylim([-150 0]);yticks([-150:30:0]);
xlim([30 35]);xticks([30:1:35]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water salinity (psu)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('19/5 17:05','19/5 22:20','20/5 03:29','20/5 13:19','20/5 15:55','Fontsize',9); 
text(31,-60,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(30.2,-15,'(b)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

%
clear;clc;
CP_Lehar=readtable ('CP_Lehar.txt');
CP_Lehar=table2array(CP_Lehar);
Times=[0.5700,10.18,19.16,1.03,9.13,18.12,3.41,6.01];
for k=1:length(Times)
    if k<=3
        subplot(2,6,7);
        index=find(CP_Lehar(:,6)==Times(k));
        water_temperature=CP_Lehar(index,end-1);
        plot(water_temperature,5*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,8);
        index=find(CP_Lehar(:,6)==Times(k));
        water_temperature=CP_Lehar(index,end-1);
        plot(water_temperature,5*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end

subplot(2,6,7);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('28/11 00:57','28/11 10:18','28/11 19:16','Fontsize',9); 
text(28,-120,'CP route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(a)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

subplot(2,6,8);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('29/11 01:03','29/11 09:13','29/11 18:12','30/11 03:41','30/11 06:01','Fontsize',9); 
text(28,-120,'CP route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(b)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

%
clear;clc;
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
Times=[4.53, 7.55 20.40 16.22 23.06 05.04];
for k=1:length(Times)
    if k<=3
        subplot(2,6,9);
        index=find(PK_Lehar(:,6)==Times(k));
        water_temperature=PK_Lehar(index,end-2);
        plot(water_temperature,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,10);
        index=find(PK_Lehar(:,6)==Times(k));
        water_temperature=PK_Lehar(index,end-2);
        plot(water_temperature,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end
subplot(2,6,9);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('20/11 04:53','20/11 07:55','20/11 20:40','Fontsize',9); 
text(28,-120,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(c)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

subplot(2,6,10);
ylim([-150 0]);yticks([-150:30:0]);
xlim([18 32]);xticks([18:2:32]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water temperature (^oC)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('21/11 16:22','21/11 23:06','22/11 05:04','Fontsize',9); 
text(28,-120,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(19,-12,'(d)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');

%
clear;clc;
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
Times=[4.53, 7.55 20.40 16.22 23.06 05.04];
for k=1:length(Times)
    if k<=3
        subplot(2,6,11);
        index=find(PK_Lehar(:,6)==Times(k));
        water_salinity=PK_Lehar(index,end-1);
        plot(water_salinity,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    else
        subplot(2,6,12);
        index=find(PK_Lehar(:,6)==Times(k));
        water_salinity=PK_Lehar(index,end-1);
        plot(water_salinity,1*[0:-1:-(length(index)-1)],'linewidth',1.7);hold on;
    end
end
subplot(2,6,11);
ylim([-150 0]);yticks([-150:30:0]);
xlim([26 36]);xticks([26:2:36]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water salinity (psu)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('20/11 04:53','20/11 07:55','20/11 20:40','Fontsize',9); 
text(28,-70,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(26.5,-24,'(c)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
subplot(2,6,12);
ylim([-150 0]);yticks([-150:30:0]);
xlim([26 36]);xticks([26:2:36]);
set(gca,'FontSize',12,'FontWeight','bold');
grid on;
xlabel('sea water salinity (psu)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
ylabel('z (m)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');
legend('21/11 16:22','21/11 23:06','22/11 05:04','Fontsize',9); 
text(28,-70,'PK route','FontSize',12,'FontWeight','bold','FontName','Times New Roman');
text(26.5,-24,'(d)','FontSize',13,'FontWeight','bold','FontName','Times New Roman');