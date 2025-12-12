clear;clc;
lon_V = ncread("Profile_Lehar.nc",'lon');   
lat_V = ncread("Profile_Lehar.nc",'lat');    
date = ncread("Profile_Lehar.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01');
TEM = ncread("Profile_Lehar.nc",'theta'); 
depth=ncread("Profile_Lehar.nc",'lev');  
lon1=82;lon2=94; 
lat1=12;lat2=15;   
select_date=[4,8,10];
for k=1:length(select_date)
    subplot(2,3,k);    
    temp=TEM(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),:,select_date(k));   
    temp=squeeze(mean(temp,2,'omitnan'));
    lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
    lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
    [DEP,LON]=meshgrid(depth,lon);
    [C,H]=contourf(LON,-DEP,temp,'ShowText','on');hold on;
    H.LevelStep=2;
    colormap("turbo");
    h=colorbar('v','Fontsize',11,'FontWeight','normal');
    h.Label.FontSize=12;
    h.Label.FontWeight='bold';
    h.Label.FontName='Times New Roman';
    clim([10 30]);
    xlim([82.2, 93.8]);ylim([-160 -5]); 
    grid on;xlabel('longitude (^oE)'); ylabel('depth(m)');
end

%%
clear;clc;
lon_V = ncread("Profile_Lehar.nc",'lon');   
lat_V = ncread("Profile_Lehar.nc",'lat');  
date = ncread("Profile_Lehar.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
TEM = ncread("Profile_Lehar.nc",'theta'); 
depth=ncread("Profile_Lehar.nc",'lev');  
lon1=88;lon2=91;  
lat1=12;lat2=15; 
select_date=[4,8,10];
for k=1:length(select_date)
  subplot(2,3,3+k);
  temp=TEM(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),:,select_date(k));   
  temp=squeeze(mean(temp,1,'omitnan'));
  lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
  lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
  [DEP,LAT]=meshgrid(depth,lat);
  [C,H]=contourf(LAT,-DEP,temp,'ShowText','on');hold on;
  H.LevelStep=2;
  colormap("turbo");
  h=colorbar('v','Fontsize',11,'FontWeight','normal');
  h.Label.FontSize=12;
  h.Label.FontWeight='bold';
  h.Label.FontName='Times New Roman';
  clim([10 30]);
  xlim([12.1, 14.9]);ylim([-160 -5]); 
  grid on; xlabel('latitude (^oN)'); ylabel('depth(m)');
end


