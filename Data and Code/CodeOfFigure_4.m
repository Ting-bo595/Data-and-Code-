clear;clc;
% plot Viyaru
lon_V = ncread("MLD_5mon.nc",'lon');   
lat_V = ncread("MLD_5mon.nc",'lat');    
date = ncread("MLD_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01');
MLD_V = ncread("MLD_5mon.nc",'mxldepth'); 
lon1=78;lon2=100;  
lat1=3;lat2=25;   
filename='Viyaru_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Viyaru_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
select_date=[1,4,6,9];
for k=1:length(select_date)
    if k==1
       subplot(2,4,k);
       mld_f=MLD_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';
       lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
       lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
       [LON,LAT]=meshgrid(lon,lat);
       m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
       m_pcolor(LON,LAT,mld_f);
       shading interp;  colormap("spring");
       h=colorbar('v','Fontsize',11,'FontWeight','normal');
       h.Label.FontSize=12;
       h.Label.FontWeight='bold';
       h.Label.FontName='Times New Roman';
       clim([10 80]);
       m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
       m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
              'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
              'FontWeight','bold');
       hold on;
       m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
    else
      subplot(2,4,k);
      mld=-mld_f+MLD_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';
      lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
      lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
      [LON,LAT]=meshgrid(lon,lat);
      m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
      m_pcolor(LON,LAT,mld);
      shading interp;  colormap("jet");
      h=colorbar('v','Fontsize',11,'FontWeight','normal');
      h.Label.FontSize=12;
      h.Label.FontWeight='bold';
      h.Label.FontName='Times New Roman';
      clim([-20 50]);
      m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
      m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
              'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
              'FontWeight','bold');
      hold on;
      m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
    end
end

clear;clc;
lon_V = ncread("MLD_11mon.nc",'lon');   
lat_V = ncread("MLD_11mon.nc",'lat');    
date = ncread("MLD_11mon.nc",'time');
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
MLD_V = ncread("MLD_11mon.nc",'mxldepth');
lon1=78;lon2=100;  
lat1=3;lat2=25;    
filename='Lehar_BestTrack.xlsx';
opts=detectImportOptions(filename);
opts.VariableNamingRule='preserve';
Best_track=readtable('Lehar_BestTrack.xlsx',opts);
lattc=table2array(Best_track(:,3));
lontc=table2array(Best_track(:,4));
select_date=[4,7,9,11];
for k=1:length(select_date)
    if k==1
       subplot(2,4,4+k);
       mld_f=MLD_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';
       lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
       lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
       [LON,LAT]=meshgrid(lon,lat);
       m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
       m_pcolor(LON,LAT,mld_f);
       shading interp;  colormap("spring");
       h=colorbar('v','Fontsize',11,'FontWeight','normal');
       h.Label.FontSize=12;
       h.Label.FontWeight='bold';
       h.Label.FontName='Times New Roman';
       clim([10 80]);
       m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
       m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
              'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
              'FontWeight','bold');
       hold on;
       m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
    else
      subplot(2,4,4+k);
      mld=-mld_f+MLD_V(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),select_date(k))';
      lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
      lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
      [LON,LAT]=meshgrid(lon,lat);
      m_proj('Miller','lon',[lon1 lon2],'lat',[lat1 lat2]);
      m_pcolor(LON,LAT,mld);
      shading interp;  colormap("jet");
      h=colorbar('v','Fontsize',11,'FontWeight','normal');
      h.Label.FontSize=12;
      h.Label.FontWeight='bold';
      h.Label.FontName='Times New Roman';
      clim([-20 50]);
      m_coast('patch',[0.5 0.5 0.5],'Edgecolor','black');
      m_grid('linestyle',':','box','fancy','tickdir','out','linecolor','w',...
              'alpah','0.5','ytick',3:3:25,'xtick',78:4:100,'Fontsize',10,...
              'FontWeight','bold');
      hold on;
      m_plot(lontc(1:3:end),lattc(1:3:end),'o','Markersize',3,'linewidth',1.5,'Color','k','MarkerFacecolor','k');
    end
end


