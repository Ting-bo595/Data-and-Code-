clear;clc;
lon_V = ncread("Profile_Viyaru.nc",'lon');  
lat_V = ncread("Profile_Viyaru.nc",'lat');    
date = ncread("Profile_Viyaru.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
TEM = ncread("Profile_Viyaru.nc",'theta'); 
depth=ncread("Profile_Viyaru.nc",'lev');  
lon1=84;lon2=93;  
lat1=4;lat2=20;    
selected_date=[1,6,8];
for k=1:length(selected_date)
    subplot(2,3,k);
    temp=TEM(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),:,selected_date(k));   
    temp=squeeze(mean(temp,1,'omitnan'));
    lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
    lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
    [DEP,LAT]=meshgrid(depth,lat);
    [C,H]=contourf(LAT,-DEP,temp,'ShowText','on');hold on;
    H.LevelStep=2;
    shading flat;
    colormap("turbo");
    h=colorbar('v','Fontsize',11,'FontWeight','normal');
    h.Label.FontSize=12;
    h.Label.FontWeight='bold';
    h.Label.FontName='Times New Roman';
    clim([12 30]);
    xlim([4, 20]);ylim([-160 -5]); 
    grid on;
end
%%
clear;clc;
% plot Viyaru
lon_V = ncread("Profile_Viyaru.nc",'lon');   %longitude
lat_V = ncread("Profile_Viyaru.nc",'lat');    %latitude
date = ncread("Profile_Viyaru.nc",'time'); %时间
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); %时间格式转化
TEM = ncread("Profile_Viyaru.nc",'theta'); %提取温度
depth=ncread("Profile_Viyaru.nc",'lev');  %提取高度
lon1=81;lon2=96;  % 取定台风附近区域的经度
lat1=8;lat2=12;    % 取定台风附近区域的纬度

selected_date=[1,6,8];
for k=1:length(selected_date)
    subplot(2,3,3+k);
    temp=TEM(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),:,selected_date(k));   
    temp=squeeze(mean(temp,2,'omitnan'));
   lon=lon_V(find(lon_V>=lon1&lon_V<=lon2));
   lat=lat_V(find(lat_V>=lat1&lat_V<=lat2));
   [DEP,LON]=meshgrid(depth,lon);
   [C,H]=contourf(LON,-DEP,temp,'ShowText','on');hold on;
   H.LevelStep=2;
   shading flat;
   colormap("turbo");
   h=colorbar('v','Fontsize',11,'FontWeight','normal');
   h.Label.FontSize=12;
   h.Label.FontWeight='bold';
   h.Label.FontName='Times New Roman';
   clim([12 30]);
   xlim([81, 96]);ylim([-160 -5]); 
   grid on;
   end

