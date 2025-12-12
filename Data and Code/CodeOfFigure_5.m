clear;clc;
% plot Viyaru
lon_V = ncread("Precipitation_5mon.nc",'lon');  
lat_V = ncread("Precipitation_5mon.nc",'lat');    
date = ncread("Precipitation_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
PRE_V = ncread("Precipitation_5mon.nc",'rainfall'); 
lon1=78;lon2=100;  
lat1=3;lat2=25;    
filename='Viyaru_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Viyaru_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
select_date=[1,3,5,7,8];
for k=1:length(select_date)
    subplot(2,5,k);
    pre=PRE_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';   
    lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
    lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
    [LON,LAT]=meshgrid(lon,lat);
    m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
    m_pcolor(LON,LAT,pre);
    shading interp;
    colormap("winter");
    h=colorbar('v','Fontsize',11,'FontWeight','normal');
    h.Label.FontSize=12;
    h.Label.FontWeight='bold';
    h.Label.FontName='Times New Roman';
    clim([0 80]);
    m_coast('patch',[0.8 0.8 0.8],'Edgecolor','black');
    m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
      'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
      'FontWeight','bold');
    hold on;
    m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
end

clear;clc;
lon_V = ncread("Precipitation_11mon.nc",'lon');   
lat_V = ncread("Precipitation_11mon.nc",'lat');   
date = ncread("Precipitation_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
PRE_V = ncread("Precipitation_11mon.nc",'rainfall'); 
lon1=78;lon2=100; 
lat1=3;lat2=25;    
filename='Lehar_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Lehar_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
select_date=[6,8,9,10,11];
for k=1:length(select_date)
    subplot(2,5,5+k);
    pre=PRE_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';   
    lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
    lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
    [LON,LAT]=meshgrid(lon,lat);
    m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
    m_pcolor(LON,LAT,pre);
    shading interp;
    colormap("winter");
    h=colorbar('v','Fontsize',11,'FontWeight','normal');
    h.Label.FontSize=12;
    h.Label.FontWeight='bold';
    h.Label.FontName='Times New Roman';
    clim([0 80]);
    m_coast('patch',[0.8 0.8 0.8],'Edgecolor','black');
    m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
      'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
      'FontWeight','bold');
    hold on;
    m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
end

