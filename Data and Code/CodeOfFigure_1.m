clear;clc;
subplot(1,2,1);
filename='Viyaru_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Viyaru_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
ws=table2array(Best_track(:,5));
f1 = figure(1);set(f1,'Color','w');
m_proj('mercator','lat',[3,25],'lon',[78,100]);
m_coast('patch',[.7 .7 .7],'edgecolor','black');
m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w','backcolor',[0.84 0.99 0.99], ...
       'alpah','0.5','ytick',[3:2:25],'xtick',[78:4:100],'Fontsize',12,...
       'FontWeight','bold');
colormap(m_colmap('jet',45));
cb=colorbar('Fontsize',12,'FontWeight','bold','Location','southoutside');
cb.Label.String='MWS [m s^{-1}]';
cb.Label.FontSize=12;
cb.Label.FontWeight='bold';
cb.Label.FontName='Times New Roman';
caxis([min(ws),max(ws)]);
cmap = colormap(f1);
n = length(lontc);
for i = 1:n
    if (isnan(ws(i)))
        ci = cmap(1,:);
    else
        ci = cmap(ws(i)-12,:);
    end
    hold on;
    if (i == 1)
        m_line(lontc(1:2),lattc(1:2),'Color',ci,'linewidth',3.0);
    else
        m_line(lontc(i-1:i),lattc(i-1:i),'Color',ci,'linewidth',3.0);
    end
end
lontc1=lontc(1:8:n);lattc1=lattc(1:8:n);
m_plot(lontc1,lattc1,'+','Markersize',10,'linewidth',1.5,'Color','k');
hold on;
Text_0={'11/05','12/05','13/05','14/05','15/05','16/05'};
for k=1:length(Text_0)
    m_text(lontc1(k)+0.5,lattc1(k)+0.2,char(Text_0(k)),'Fontweight','bold','Color','k','Fontsize',10);
end
load ('CP_route_Viyaru.mat');
CP_latitude=R(:,1);CP_longitude=R(:,2);
m_line(CP_longitude,CP_latitude,'LineStyle','--','Color','m','linewidth',1.8);
index=[1,3,6,8,10,12,13 15];
m_plot(CP_longitude(index),CP_latitude(index),'o','Markersize',5,'linewidth',1.8,'Color','m','Markerfacecolor','m');
Text_1={'15/05','17/05'};
m_text(CP_longitude(1)-1.8,CP_latitude(1)+1,char(Text_1(1)),'Fontweight','bold','Color','m','Fontsize',10);
m_text(CP_longitude(end)+0.5,CP_latitude(end)-0.2,char(Text_1(end)),'Fontweight','bold','Color','m','Fontsize',10);
Date_instant={'2013-05-15','2013-05-15','2013-05-15','2013-05-15','2013-05-16','2013-05-16','2013-05-16'};
Time_instant=[ 0000,        0600,        1200,        2100,        0600,        1200,        1800];
for k=1:length(Date_instant)
    date_select=find(table2array(Best_track(:,1))==Date_instant(k));
    time_select=find(table2array(Best_track(date_select,2))==Time_instant(k));
    lat_select(k)=table2array(Best_track(date_select(time_select),3));
    lon_select(k)=table2array(Best_track(date_select(time_select),4));
end
m_plot(lon_select,lat_select,'o','Markersize',5,'linewidth',1.2,'Color','k','Markerfacecolor','k');
clear R;
load ('PK_route_Viyaru.mat');
PK_latitude=R(:,1);PK_longitude=R(:,2);
m_line(PK_longitude,PK_latitude,'LineStyle','--','Color',[0.47 0.67 0.19],'linewidth',2.0);
index=[1 3 4 5 6 7 9 10];
m_plot(PK_longitude(index),PK_latitude(index),'^','Markersize',6,'linewidth',1.2,'Color',[0.47 0.67 0.19],'Markerfacecolor',[0.47 0.67 0.19]);
Text_2={'18/05','20/05'};
m_text(PK_longitude(1)+0.8,PK_latitude(1),char(Text_2(1)),'Fontweight','bold','Color',[0.47 0.67 0.19],'Fontsize',10);
m_text(PK_longitude(end)-1,PK_latitude(end)+0.7,char(Text_2(end)),'Fontweight','bold','Color',[0.47 0.67 0.19],'Fontsize',10);
m_text(79,23,'(a)','Fontweight','bold','Color','k','Fontsize',14,'Fontname','Times New Roman');

clear;clc;
subplot(1,2,2);
filename='Lehar_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Lehar_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
ws=table2array(Best_track(:,5));
f1 = figure(1);
m_proj('mercator','lat',[3,25],'lon',[78,100]);
m_coast('patch',[.7 .7 .7],'edgecolor','black');
m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w','backcolor',[0.84 0.99 0.99],...
       'alpah','0.5','ytick',[3:2:25],'xtick',[78:4:100],'Fontsize',12,...
       'FontWeight','bold');
colormap(m_colmap('jet',75));
cb=colorbar('Fontsize',12,'FontWeight','bold','Location','southoutside');
cb.Label.String='MWS [m s^{-1}]';
cb.Label.FontSize=12;
cb.Label.FontWeight='bold';
cb.Label.FontName='Times New Roman';
caxis([min(ws),max(ws)]);
cmap = colormap(f1);
n = length(lontc);
for i = 1:n
    if (isnan(ws(i)))
        ci = cmap(1,:);
    else
        ci = cmap(ws(i)-12,:);
    end
    hold on;
    if (i == 1)
        m_line(lontc(1:2),lattc(1:2),'Color',ci,'linewidth',3.0);
    else
        m_line(lontc(i-1:i),lattc(i-1:i),'Color',ci,'linewidth',3.0);
    end
end
hold on;
lontc1=lontc(3:7:n);lattc1=lattc(3:7:n);
m_plot(lontc1,lattc1,'+','Markersize',10,'linewidth',1.0,'Color','k');
hold on;
Text_0={'24/11','25/11','26/11','27/11','28/11'};
for k=1:length(Text_0)
    if k==2
        m_text(lontc1(k)+0.5,lattc1(k)+0,char(Text_0(k)),'Fontweight','bold','Color','k','Fontsize',10);
    else
        m_text(lontc1(k)-0.2,lattc1(k)+0.7,char(Text_0(k)),'Fontweight','bold','Color','k','Fontsize',10);

    end
end
load ('CP_route_Lehar.mat');
CP_latitude=R(:,1);CP_longitude=R(:,2);
m_line(CP_longitude,CP_latitude,'LineStyle','--','Color','m','linewidth',1.8);
index=[1 3 5 6 8 10 12 13];
m_plot(CP_longitude(index),CP_latitude(index),'o','Markersize',5,'linewidth',1.8,'Color','m','Markerfacecolor','m');
Text_1={'28/11','30/11'};
m_text(CP_longitude(1)-1.5,CP_latitude(1)-1,char(Text_1(1)),'Fontweight','bold','Color','m','Fontsize',10);
m_text(CP_longitude(end)-2.2,CP_latitude(end)-1.0,char(Text_1(end)),'Fontweight','bold','Color','m','Fontsize',10);
Time_instant=[ 0000,        0900];
for k=1:2
    date_select=find(table2array(Best_track(:,1))==Date_instant(k));
    time_select=find(table2array(Best_track(date_select,2))==Time_instant(k));
    lat_select(k)=table2array(Best_track(date_select(time_select),3));
    lon_select(k)=table2array(Best_track(date_select(time_select),4));
end
m_plot(lon_select,lat_select,'o','Markersize',5,'linewidth',1.2,'Color','k','Markerfacecolor','k');
clear R;
load ('PK_route_Lehar.mat');
PK_latitude=R(:,1);PK_longitude=R(:,2);
m_line(PK_longitude,PK_latitude,'LineStyle','--','Color',[0.47 0.67 0.19],'linewidth',2.0);
index=[1 2 3 6 7 8];
m_plot(PK_longitude(index),PK_latitude(index),'^','Markersize',6,'linewidth',1.2,'Color',[0.47 0.67 0.19],'Markerfacecolor',[0.47 0.67 0.19]);
Text_2={'20/11','22/11'};
m_text(PK_longitude(1)+0.2,PK_latitude(1)+0.8,char(Text_2(1)),'Fontweight','bold','Color',[0.47 0.67 0.19],'Fontsize',10);
m_text(PK_longitude(end)+0.8,PK_latitude(end)+0.0,char(Text_2(end)),'Fontweight','bold','Color',[0.47 0.67 0.19],'Fontsize',10);
m_text(79,23,'(b)','Fontweight','bold','Color','k','Fontsize',14,'Fontname','Times New Roman');

