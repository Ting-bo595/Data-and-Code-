clear;clc;
subplot(3,4,1);
load CP_Viyaru.dat;
index=find(CP_Viyaru(:,7)<=200 & CP_Viyaru(:,7)>=5);
lon=CP_Viyaru(index,2);
depth=CP_Viyaru(index,7);
water_temperature=CP_Viyaru(index,8);
WT=[];LON=[];DEP=[];
for n=1:length(index)
    if n~=1 & lon(n)==lon(n-1)
        continue;
    end
    WT_LON=[];
    for m=1:length(index)
        if lon(m)==lon(n)
           WT_LON=[WT_LON,water_temperature(m)];
        else
            continue;
        end
    end
    if size(WT_LON)==[1 40]
        WT=cat(2,WT,WT_LON');
        LON=[LON,lon(n)];
    end
    size(WT_LON)
end
DEP=unique(depth);
[LON1,DEP1]=meshgrid(LON,-DEP);
[C,H]=contourf(LON1,DEP1,WT,'ShowText','on');hold on;
H.LevelStep=2;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlim([81 92]);
ylim([-160 -5]);
shading interp;colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlabel('longitude(^oE)');ylabel('depth (m)');

%
clear;clc;
load PK_Viyaru.dat;
index=find(PK_Viyaru(:,7)<=200 & PK_Viyaru(:,7)>=5);
lon=PK_Viyaru(index,2);
lat=PK_Viyaru(index,1);
depth=PK_Viyaru(index,7);
water_temperature=PK_Viyaru(index,8);
water_salinity=PK_Viyaru(index,9);
WT=[];
WS=[];
LAT=[];
for n=1:length(index)
    if n~=1 & lat(n)==lat(n-1)
        continue;
    end
    WT_LAT=[];
    WS_LAT=[];
    for m=1:length(index)
        if lat(m)==lat(n)
           WT_LAT=[WT_LAT,water_temperature(m)];
           WS_LAT=[WS_LAT,water_salinity(m)];
        else
            continue;
        end
    end
    if size(WT_LAT)==[1 196]
        WT=cat(2,WT,WT_LAT');
        WS=cat(2,WS,WS_LAT');
        LAT=[LAT,lat(n)];
    end
    size(WT_LAT)
end
DEP=unique(depth);
subplot(3,4,5);
[LAT1,DEP1]=meshgrid(LAT,-DEP);
[C,H]=contourf(LAT1,DEP1,WT,'ShowText','on');hold on;
H.LevelStep=2;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlim([12 20]);
ylim([-160 -5]);
shading interp;colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlabel('latitue(^oN)');
ylabel('depth(m)');
subplot(3,4,9);
[LAT1,DEP1]=meshgrid(LAT,-DEP);
[C,H]=contourf(LAT1,DEP1,WS,'ShowText','on');hold on;
H.LevelStep=0.5;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlim([12 20]);
ylim([-160 -5]);
shading interp;colormap((summer));
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([31 35]);
xlabel('latitude(^oN)');
ylabel('depth(m)');

clear;clc;
subplot(3,4,3);
CP_Lehar=readtable ('CP_Lehar.txt');
CP_Lehar=table2array(CP_Lehar);
index=find(CP_Lehar(:,7)<=200 & CP_Lehar(:,7)>=5);
lon=CP_Lehar(index,2);
lat=CP_Lehar(index,1);
depth=CP_Lehar(index,7);
water_temperature=CP_Lehar(index,8);
WT=[];
LON=[];
DEP=[];
for n=1:length(index)
    if n~=1 & lon(n)==lon(n-1)
        continue;
    end
    WT_LON=[];
    for m=1:length(index)
        if lon(m)==lon(n)
           WT_LON=[WT_LON,water_temperature(m)];
        else
            continue;
        end
    end
    if size(WT_LON)==[1 40]
        WT=cat(2,WT,WT_LON');
        LON=[LON,lon(n)];
    end
    size(WT_LON)
end
DEP=unique(depth);
[LON1,DEP1]=meshgrid(LON,-DEP);
[C,H]=contourf(LON1,DEP1,WT,'ShowText','on');hold on;
H.LevelStep=2;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlim([81 92]);
ylim([-160 -5]);
shading interp;colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlabel('longitude(^oE)');
ylabel('depth(m)');

%
clear;clc;
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
index=find(PK_Lehar(:,7)<=200 & PK_Lehar(:,7)>=5);
lon=PK_Lehar(index,2);
lat=PK_Lehar(index,1);
depth=PK_Lehar(index,7);
water_temperature=PK_Lehar(index,8);
water_salinity=PK_Lehar(index,9);
WT=[];
WS=[];
LAT=[];
for n=1:length(index)
    if n~=1 & lat(n)==lat(n-1)
        continue;
    end
    WT_LAT=[];
    WS_LAT=[];
    for m=1:length(index)
        if lat(m)==lat(n)
           WT_LAT=[WT_LAT,water_temperature(m)];
           WS_LAT=[WS_LAT,water_salinity(m)];
        else
            continue;
        end
    end
    if size(WT_LAT)==[1 196]
        WT=cat(2,WT,WT_LAT');
        WS=cat(2,WS,WS_LAT');
        LAT=[LAT,lat(n)];
    end
    size(WT_LAT)
end
DEP=unique(depth);
subplot(3,4,7);
[LAT1,DEP1]=meshgrid(LAT,-DEP);
[C,H]=contourf(LAT1,DEP1,WT,'ShowText','on');hold on;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
H.LevelStep=2;
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlim([13 20]);
ylim([-160 -5]);
shading interp;colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlabel('latitude(^oN)');ylabel('depth(m)');

subplot(3,4,11);
[LAT1,DEP1]=meshgrid(LAT,-DEP);
[C,H]=contourf(LAT1,DEP1,WS,'ShowText','on');hold on;
H.LevelStep=0.5;
clabel(C,H,'FontSize',9,'FontWeight','Bold');

xlim([13 20]);
ylim([-160 -5]);
shading interp;colormap((colormap(summer)));
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([31 35]);
xlabel('latitude(^oN)');
ylabel('depth(m)');

%%
subplot(3,4,2);
load CP_Viyaru.dat;
index=find(CP_Viyaru(:,7)<=200 & CP_Viyaru(:,7)>=5);
lon1=CP_Viyaru(index,2); 
lat1=CP_Viyaru(index,1);
lon_V = ncread("data\SST_10-20_May.nc",'lon');  
lat_V = ncread("data\SST_10-20_May.nc",'lat');    
date = ncread("data\SST_10-20_May.nc",'time'); 
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01');
TEM = ncread("data\SST_10-20_May.nc",'theta'); 
depth=ncread("data\SST_10-20_May.nc",'lev');  
t=3:5;  
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  temp(k,:,:)=squeeze(TEM(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));  lat(k)=lat_V(m(1));
end
[DEP,LON]=meshgrid(depth,lon);
temp1=mean(temp,3);
[C,H]=contourf(LON,-DEP,temp1,'ShowText','on');hold on;
H.LevelStep=2;
shading flat;
colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlim([81, 91.8]);ylim([-160 -5]); 
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlabel('longitude(^oE)');
%%
clear;clc;%close;
subplot(3,4,6);
load PK_Viyaru.dat;
index=find(PK_Viyaru(:,7)<=200 & PK_Viyaru(:,7)>=5);
lon1=PK_Viyaru(index,2); 
lat1=PK_Viyaru(index,1);
lon_V = ncread("data\SST_10-20_May.nc",'lon');   
lat_V = ncread("data\SST_10-20_May.nc",'lat');    
date = ncread("data\SST_10-20_May.nc",'time');
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
TEM = ncread("data\SST_10-20_May.nc",'theta'); 
depth=ncread("data\SST_10-20_May.nc",'lev');  
t=6:8; 
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  temp(k,:,:)=squeeze(TEM(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));
  lat(k)=lat_V(m(1));
end
[DEP,LAT]=meshgrid(depth,lat);
temp1=mean(temp,3,'omitnan');
[C,H]=contourf(LAT,-DEP,temp1,'ShowText','on');hold on;
H.LevelStep=2;
shading flat;
colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlim([12, 19.8]);ylim([-160 -5]); 
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlabel('latitude(^oN)');ylabel('depth(m)');

%%
clear;clc;
subplot(3,4,10);
load PK_Viyaru.dat;
index=find(PK_Viyaru(:,7)<=200 & PK_Viyaru(:,7)>=5);
lon1=PK_Viyaru(index,2); 
lat1=PK_Viyaru(index,1);
lon_V = ncread("data\SSS_10-20_May.nc",'lon');   
lat_V = ncread("data\SSS_10-20_May.nc",'lat');    
date = ncread("data\SSS_10-20_May.nc",'time'); 
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
SAL = ncread("data\SSS_10-20_May.nc",'salt'); 
depth=ncread("data\SSS_10-20_May.nc",'lev');  
t=6:8;  
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  sal(k,:,:)=squeeze(SAL(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));
  lat(k)=lat_V(m(1));
end
[DEP,LAT]=meshgrid(depth,lat);
sal1=mean(sal,3,'omitnan');
[C,H]=contourf(LAT,-DEP,sal1,'ShowText','on');hold on;
H.LevelStep=0.5;
shading flat;
colormap("summer");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([31 35]);
xlim([12, 19.8]);ylim([-160 -5]); 
clabel(C,H,'FontSize',10,'FontWeight','Bold');
xlabel('latitude(^oN)');
clabel(C,H,'FontSize',9,'FontWeight','Bold');
%%
clear;clc;
subplot(3,4,4);
CP_Lehar=readtable ('CP_Lehar.txt');
CP_Lehar=table2array(CP_Lehar);
index=find(CP_Lehar(:,7)<=200 & CP_Lehar(:,7)>=5);
lon1=CP_Lehar(index,2);
lat1=CP_Lehar(index,1);
lon_V = ncread("data\SST_18Nov-02Dec.nc",'lon');   
lat_V = ncread("data\SST_18Nov-02Dec.nc",'lat');    
date = ncread("data\SST_18Nov-02Dec.nc",'time'); 
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
TEM = ncread("data\SST_18Nov-02Dec.nc",'theta'); 
depth=ncread("data\SST_18Nov-02Dec.nc",'lev'); 
t=9:10;  
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  temp(k,:,:)=squeeze(TEM(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));
  lat(k)=lat_V(m(1));
end
[DEP,LON]=meshgrid(depth,lon);
temp1=mean(temp,3,'omitnan');
[C,H]=contourf(LON,-DEP,temp1,'ShowText','on');hold on;
H.LevelStep=2;
shading flat;
colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlim([81.2, 91.8]);ylim([-160 -5]); 
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlabel('longitude(^oE)');
%%
clear;clc;
subplot(3,4,8);
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
index=find(PK_Lehar(:,7)<=200 & PK_Lehar(:,7)>=5);
lon1=PK_Lehar(index,2);
lat1=PK_Lehar(index,1);
lon_V = ncread("data\SST_18Nov-02Dec.nc",'lon');  
lat_V = ncread("data\SST_18Nov-02Dec.nc",'lat');    
date = ncread("data\SST_18Nov-02Dec.nc",'time');
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
TEM = ncread("data\SST_18Nov-02Dec.nc",'theta'); 
depth=ncread("data\SST_18Nov-02Dec.nc",'lev');  
t=6:7;  
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  temp(k,:,:)=squeeze(TEM(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));
  lat(k)=lat_V(m(1));
end
[DEP,LAT]=meshgrid(depth,lat);
temp1=mean(temp,3,'omitnan');
temp1=fillmissing(temp1, 'nearest');
[C,H]=contourf(LAT,-DEP,temp1,'ShowText','on');hold on;
H.LevelStep=2;
shading flat;
colormap("turbo");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([12 30]);
xlim([13.2, 20]);ylim([-160 -5]); 
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlabel('latitude(^oN)'); 
%%
clear;clc;
subplot(3,4,12);
PK_Lehar=readtable ('PK_Lehar.txt');
PK_Lehar=table2array(PK_Lehar);
index=find(PK_Lehar(:,7)<=200 & PK_Lehar(:,7)>=5);
lon1=PK_Lehar(index,2);
lat1=PK_Lehar(index,1);
lon_V = ncread("data\SSS_18Nov-02Dec.nc",'lon');   
lat_V = ncread("data\SSS_18Nov-02Dec.nc",'lat');    
date = ncread("data\SSS_18Nov-02Dec.nc",'time'); 
date = datetime((date-2)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
SAL = ncread("data\SSS_18Nov-02Dec.nc",'salt');
depth=ncread("data\SSS_18Nov-02Dec.nc",'lev');  
t=6:7;  
for k=1:length(lon1)
  n=find(abs(lon_V-lon1(k))==min(abs(lon_V-lon1(k))));
  m=find(abs(lat_V-lat1(k))==min(abs(lat_V-lat1(k))));
  sal(k,:,:)=squeeze(SAL(n(1),m(1),:,t)); 
  lon(k)=lon_V(n(1));
  lat(k)=lat_V(m(1));
end
[DEP,LAT]=meshgrid(depth,lat);
sal1=mean(sal,3,'omitnan');
sal1=fillmissing(sal1, 'nearest');
[C,H]=contourf(LAT,-DEP,sal1,'ShowText','on');hold on;
H.LevelStep=0.5;
shading flat;
colormap("summer");
h=colorbar('v','Fontsize',11,'FontWeight','normal');
h.Label.FontSize=12;
h.Label.FontWeight='bold';
h.Label.FontName='Times New Roman';
clim([31 35]);
xlim([13.2, 20]);ylim([-160 -5]); 
clabel(C,H,'FontSize',9,'FontWeight','Bold');
xlabel('latitude(^oN)');



