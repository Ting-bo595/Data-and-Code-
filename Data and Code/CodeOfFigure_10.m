clear;clc;
lon_V = ncread("WSP_5mon.nc",'lon'); 
lat_V = ncread("WSP_5mon.nc",'lat');   
date = ncread("WSP_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
WSP_V = ncread("WSP_5mon.nc",'wsp');
U = ncread("EWSP_5mon.nc",'uwnd'); 
V = ncread("NWSP_5mon.nc",'vwnd'); 
lon1=78;lon2=100;  
lat1=3;lat2=25;    
filename='Viyaru_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Viyaru_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
Select_time=[4,7,9,10,11,12,13,14];
title_text={'10 May','13 May','15 May','16 May','17 May','18 May','19 May','20 May'};
for k=1:length(Select_time)
subplot(2,4,k);
t=Select_time(k);
wsp=WSP_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t)';   
u=U(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t)';   
v=V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t)';   
lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));

[LON,LAT]=meshgrid(lon,lat);
m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
m_pcolor(LON,LAT,wsp*3.6);
colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([0 60]);
hold on;
m_quiver(LON(1:50:end),LAT(1:50:end),u(1:50:end),v(1:50:end),'k','linewidth',1.2);%'autoscalefactor',1.6);
m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
      'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
      'FontWeight','bold');
m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3.5,'linewidth',1.5,'Color','k','MarkerFacecolor','r');
title(title_text(k));
end

