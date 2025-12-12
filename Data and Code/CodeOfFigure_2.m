clear;clc;
load SST_Viyaru.mat;
sst_V=hawaii_soest_64ec_8d0c_6dxh68f7;
Time=datetime(1970,1,1)+seconds(sst_V.time);
lat=sst_V.latitude;  lon=sst_V.longitude; 
m=[1,6,8,9,10,11]; Select_Time=Time(m);disp(Select_Time);
filename='Viyaru_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Viyaru_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
for i=1:length(m)
if i<=3
   subplot(2,5,i);
   t=m(i);               
   SST=squeeze(sst_V.sst(t,:,:));  
   [LON,LAT]=meshgrid(lon,lat);
   m_proj('Miller','lon',[lon(1) lon(end)],'lat',[lat(1) lat(end)]);
   m_pcolor(LON,LAT,SST);
   shading flat;colormap("jet");
   h=colorbar('v','Fontsize',11,'FontWeight','normal');
   title(h,'SST( ^oC )','fontName','Times New Roman','fontsize',12);
   h.Label.FontSize=12;
   h.Label.FontWeight='bold';
   h.Label.FontName='Times New Roman';
   clim([25 31.5]); hold on;
   m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
   m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
          'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
          'FontWeight','bold');
   m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',4,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
else
    subplot(2,5,i);hold on;
    t=m(i:i+2);
    SST=squeeze(mean(sst_V.sst(t,:,:),1));  
    [LON,LAT]=meshgrid(lon,lat);
    m_proj('Miller','lon',[lon(1) lon(end)],'lat',[lat(1) lat(end)]);
    m_pcolor(LON,LAT,SST);
   shading flat;colormap("jet");
    h=colorbar('v','Fontsize',11,'FontWeight','normal');
    title(h,'SST( ^oC )','fontName','Times New Roman','fontsize',12);
    h.Label.FontSize=12;
    h.Label.FontWeight='bold';
    h.Label.FontName='Times New Roman';
    clim([25 31.5]);
    m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
    m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
           'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
           'FontWeight','bold');
    m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',4,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
    break;
end     
end

subplot(2,5,5);hold on;
clear;clc;
load PK_Viyaru.dat;
sea_surface_index=find(PK_Viyaru(:,7)==0)+1;
lat=PK_Viyaru(sea_surface_index,1);
SST=PK_Viyaru(sea_surface_index,8);
SSS=PK_Viyaru(sea_surface_index,9);
plot(lat,SST,'ro-','linewidth',2,'MarkerFaceColor','r');
ylim([26 31.0]);
ylabel('SST (o^C)');
xlabel('latitude (^oN)');
clear;clc;
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
sea_surface_index=find(PK_Lehar(:,7)==0)+1;
lat=PK_Lehar(sea_surface_index,1);
SST=PK_Lehar(sea_surface_index,8);
SSS=PK_Lehar(sea_surface_index,9);
plot(lat,SST,'bo-','linewidth',2,'MarkerFaceColor','b');
ylim([26 31.0]);
ylabel('SST (^oC)');
xlabel('latitude (^oN)');
legend('Viyaru','Lehar');

clear;clc;
load SST_Lehar.mat;
sst_V=hawaii_soest_64ec_8d0c_6dxh68f7;
Time=datetime(1970,1,1)+seconds(sst_V.time); 
lat=sst_V.latitude;  
lon=sst_V.longitude; 

m=[1,5,6,7,8]; 
Select_Time=Time(m);disp(Select_Time);
filename='Lehar_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Lehar_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));

for i=1:length(m)
  if i<=3
  subplot(2,5,i+5);
  t=m(i);                
  SST=squeeze(sst_V.sst(t,:,:));  
  [LON,LAT]=meshgrid(lon,lat);
  m_proj('Miller','lon',[lon(1) lon(end)],'lat',[lat(1) lat(end)]);
  m_pcolor(LON,LAT,SST);
  shading flat;colormap("jet");
  h=colorbar('v','Fontsize',11,'FontWeight','normal');
  title(h,'SST( ^oC )','fontName','Times New Roman','fontsize',12);
  h.Label.FontSize=12;
  h.Label.FontWeight='bold';
  h.Label.FontName='Times New Roman';
  clim([25 31]);
  hold on;
  m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
  m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
         'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
         'FontWeight','bold');
  m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',4,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
  else
  subplot(2,5,i+5);
  t=m(i:i+1);
  SST=squeeze(mean(sst_V.sst(t,:,:),1)); 
  [LON,LAT]=meshgrid(lon,lat);
  m_proj('Miller','lon',[lon(1) lon(end)],'lat',[lat(1) lat(end)]);
  m_pcolor(LON,LAT,SST);
  shading flat;colormap("jet");
  h=colorbar('v','Fontsize',11,'FontWeight','normal');
  title(h,'SST( ^oC )','fontName','Times New Roman','fontsize',12);
  h.Label.FontSize=12;
  h.Label.FontWeight='bold';
  h.Label.FontName='Times New Roman';
  clim([25 31.5]);
  hold on;
  m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
  m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
      'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
       'FontWeight','bold');
  m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',4,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
  break;
  end
end

subplot(2,5,10);hold on;
clear;clc;
load CP_Viyaru.dat;
sea_surface_index=find(CP_Viyaru(:,7)==0)+1;
lon=CP_Viyaru(sea_surface_index,2);
SST=CP_Viyaru(sea_surface_index,8);

plot(lon,SST,'ro-','linewidth',2,'MarkerFaceColor','r');
ylim([26.5 31.0]);
ylabel('SST (o^C)');
xlabel('longitude (^oE)')
clear;clc;
CP_Lehar=readtable ('CP_Lehar.txt');
CP_Lehar=table2array(CP_Lehar);
sea_surface_index=find(CP_Lehar(:,7)==0)+1;
lon=CP_Lehar(sea_surface_index,2);
SST=CP_Lehar(sea_surface_index,8);
plot(lon,SST,'bo-','linewidth',2,'MarkerFaceColor','b');
ylim([26.5 31.0]);
ylabel('SST (^oC)');
xlabel('longitude (^oE)');
legend('Viyaru','Lehar');

