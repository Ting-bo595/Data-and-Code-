clear;clc;
% SST
lon_V = ncread("SST_5mon.nc",'lon');   
lat_V = ncread("SST_5mon.nc",'lat');  
date = ncread("SST_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01');
Variable = ncread("SST_5mon.nc",'sst');
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,1);
ax1=gca;
plot(ax1,1:14,var_sequence,'b-','linewidth',2);
ax1.XColor='b';
ax1.YColor='b';
ax1.XAxisLocation='top';
ax1.YLim=[28 30.5];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('SST ( ^oC )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(28,31,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(28,31,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("SST_11mon.nc",'lon');   
lat_L = ncread("SST_11mon.nc",'lat');    
date = ncread("SST_11mon.nc",'time');        
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("SST_11mon.nc",'sst');   
lon1=82;lon2=95; 
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); % 获取当前坐标轴的位置
plot(ax2,1:14,var_sequence,'r-','linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor='r';
ax2.YColor='r';
ax2.YLim=[28 30.5];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('SST ( ^oC )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% SSS
clear;clc;
lon_V = ncread("SSS_5mon.nc",'lon');   
lat_V = ncread("SSS_5mon.nc",'lat');    
date = ncread("SSS_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("SSS_5mon.nc",'sss'); 
lon1=82;lon2=95; 
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,2);
ax1=gca;
plot(ax1,1:14,var_sequence,'b-','linewidth',2);
ax1.XColor='b';
ax1.YColor='b';
ax1.XAxisLocation='top';
ax1.YLim=[32.00 32.70];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('SSS ( psu )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(32,32.7,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(32,32.7,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("SSS_11mon.nc",'lon');  
lat_L = ncread("SSS_11mon.nc",'lat');    
date = ncread("SSS_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("SSS_11mon.nc",'sss'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); 
plot(ax2,1:14,var_sequence,'r-','linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor='r';
ax2.YColor='r';
ax2.YLim=[32 32.7];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('SSS ( psu )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% MLD
clear;clc;
lon_V = ncread("MMLD_5mon.nc",'lon');   
lat_V = ncread("MMLD_5mon.nc",'lat');    
date = ncread("MMLD_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("MMLD_5mon.nc",'mxldepth'); 
lon1=82;lon2=95; 
lat1=6;lat2=21;    
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,3);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[0.00 0.45,0.74],'linewidth',2);
ax1.XColor=[0.00 0.45,0.74];
ax1.YColor=[0.00 0.45,0.74];
ax1.XAxisLocation='top';
ax1.YLim=[25 36];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('MLD ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(25,36,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(25,36,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("MMLD_11mon.nc",'lon');  
lat_L = ncread("MMLD_11mon.nc",'lat');    
date = ncread("MMLD_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("MMLD_11mon.nc",'mxldepth'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;    
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); %
plot(ax2,1:14,var_sequence,'color',[0.85 0.33 0.10],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.85 0.33 0.10];
ax2.YColor=[0.85 0.33 0.10];
ax2.YLim=[25 36];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('MLD ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% PRE
clear;clc;
lon_V = ncread("PRE_5mon.nc",'lon');   
lat_V = ncread("PRE_5mon.nc",'lat');    
date = ncread("PRE_5mon.nc",'time');
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("PRE_5mon.nc",'rainfall'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;    
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,4);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[0.00 0.45,0.74],'linewidth',2);
ax1.XColor=[0.00 0.45,0.74];
ax1.YColor=[0.00 0.45,0.74];
ax1.XAxisLocation='top';
ax1.YLim=[0 60];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('PRE ( mm )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(0,60,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(0,60,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("PRE_11mon.nc",'lon');  
lat_L = ncread("PRE_11mon.nc",'lat');    
date = ncread("PRE_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("PRE_11mon.nc",'rainfall'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); 
plot(ax2,1:14,var_sequence,'color',[0.85 0.33 0.10],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.85 0.33 0.10];
ax2.YColor=[0.85 0.33 0.10];
ax2.YLim=[0 60];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('PRE ( mm )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
%SLA
clear;clc;
filepath=pwd;
filelist=dir(fullfile(filepath,'SLA_05*.nc'));
numFiles=length(filelist);
for i=1:numFiles
    filename=fullfile(filepath,filelist(i).name);
    lon_V = ncread(filename,'longitude');   
    lat_V = ncread(filename,'latitude'); 
    date  = ncread(filename,'time'); 
    date = datetime(1950,1,1)+double(date(:)); 
    date_squeence(i)=date;
    disp(date_squeence);
    Variable = ncread(filename,'sla'); 
    lon1=82;lon2=95;  
    lat1=6;lat2=21;   
    var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2));
    var_sequence(i)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,5);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[1.00 0.41 0.16],'linewidth',2);
ax1.XColor=[1.00 0.41 0.16];
ax1.YColor=[1.00 0.41 0.16];
ax1.XAxisLocation='top';
ax1.YLim=[0.06 0.15];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('SLA ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(0,60,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(0,60,100),'k--','linewidth',1.5);hold on;
filepath=pwd;
filelist=dir(fullfile(filepath,'SLA_11*.nc'));
numFiles=length(filelist);
for i=1:numFiles
    filename=fullfile(filepath,filelist(i).name);
    lon_V = ncread(filename,'longitude');  
    lat_V = ncread(filename,'latitude'); 
    date  = ncread(filename,'time'); 
    date = datetime(1950,1,1)+double(date(:)); 
    date_squeence(i)=date;
    disp(date_squeence);

    Variable = ncread(filename,'sla');
    lon1=82;lon2=95; 
    lat1=6;lat2=21;    
    var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2));
    var_sequence(i)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); % 获取当前坐标轴的位置
plot(ax2,1:14,var_sequence,'color',[0.49 0.18 0.56],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.49 0.18 0.56];
ax2.YColor=[0.49 0.18 0.56];
ax2.YLim=[0.06 0.15];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('SLA ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% NHF
clear;clc;
lon_V = ncread("NHF_5mon.nc",'lon');   
lat_V = ncread("NHF_5mon.nc",'lat');   
date = ncread("NHF_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("NHF_5mon.nc",'oceqnet'); 
lon1=82;lon2=95; 
lat1=6;lat2=21;    
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
subplot(4,2,6);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[1.00 0.41,0.16],'linewidth',2);
ax1.XColor=[1.00 0.41,0.16];
ax1.YColor=[1.00 0.41,0.16];
ax1.XAxisLocation='top';
ax1.YLim=[-90 100];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('NHF ( w m^{-2} )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(-80,100,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(-80,100,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("NHF_11mon.nc",'lon');   
lat_L = ncread("NHF_11mon.nc",'lat');    
date = ncread("NHF_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("NHF_11mon.nc",'oceqnet'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;    
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position'));
plot(ax2,1:14,var_sequence,'color',[0.49 0.18 0.56],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.49 0.18 0.56];
ax2.YColor=[0.49 0.18 0.56];
ax2.YLim=[-90 100];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('NHF ( w m^{-2} )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% D20
clear;clc;
lon_V = ncread("D20_5mon.nc",'lon');   
lat_V = ncread("D20_5mon.nc",'lat');   
date = ncread("D20_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01');
Variable = ncread("D20_5mon.nc",'ocndt20c'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;    
for t=1:14
tt=(t*24-23):(t*24);
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),tt);   
var_sequence(t)=mean(mean(mean(var,'omitnan'),'omitnan'),'omitnan');
end
subplot(4,2,7);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[0.47 0.67 0.19],'linewidth',2);
ax1.XColor=[0.47 0.67 0.19];
ax1.YColor=[0.47 0.67 0.19];
ax1.XAxisLocation='top';
ax1.YLim=[117 129];
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('D_{20} ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(117,129,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(117,129,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("D20_11mon.nc",'lon');   
lat_L = ncread("D20_11mon.nc",'lat');    
date = ncread("D20_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("D20_11mon.nc",'ocndt20c'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
tt=(t*24-23):(t*24);
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(mean(var,'omitnan'),'omitnan'),'omitnan');
end
ax2 = axes('Position', get(gca, 'Position')); 
plot(ax2,1:14,var_sequence,'color',[0.64 0.08 0.18],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.64 0.08 0.18];
ax2.YColor=[0.64 0.08 0.18];
ax2.YLim=[117 129];
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('D_{20} ( m )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';
% SLP
clear;clc;
lon_V = ncread("SLP_5mon.nc",'lon');   
lat_V = ncread("SLP_5mon.nc",'lat');    
date = ncread("SLP_5mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("SLP_5mon.nc",'mslp');
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_V>=lon1&lon_V<=lon2),find(lat_V>=lat1&lat_V<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan')./100;
end
subplot(4,2,8);
ax1=gca;
plot(ax1,1:14,var_sequence,'Color',[0.47 0.67,0.19],'linewidth',2);
ax1.XColor=[0.47 0.67,0.19];
ax1.YColor=[0.47 0.67,0.19];
ax1.XAxisLocation='top';
ax1.YLim=[1.0035 1.0125]*10^3;
ax1.XLim=[1 14];
ax1.XTick=1:2:14;
ax1.XTickLabel={'7 May','9 May','11 May','13 May','15 May','17 May','19 May'};
hold on;
ylabel('SLP ( hpa )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
plot(4*ones(1,100),linspace(1003.5,1012.5,100),'k--','linewidth',1.5);hold on;
plot(10*ones(1,100),linspace(1003.5,1012.5,100),'k--','linewidth',1.5);hold on;
clear var_sequence;
lon_L = ncread("SLP_11mon.nc",'lon');   
lat_L = ncread("SLP_11mon.nc",'lat');    
date = ncread("SLP_11mon.nc",'time'); 
date = datetime((date)*24*3600,'ConvertFrom','epochtime','Epoch','0001-01-01'); 
Variable = ncread("SLP_11mon.nc",'mslp'); 
lon1=82;lon2=95;  
lat1=6;lat2=21;   
for t=1:14
var=Variable(find(lon_L>=lon1&lon_L<=lon2),find(lat_L>=lat1&lat_L<=lat2),t);   
var_sequence(t)=mean(mean(var,'omitnan'),'omitnan')./100;
end
ax2 = axes('Position', get(gca, 'Position')); 
plot(ax2,1:14,var_sequence,'color',[0.64 0.08 0.18],'linewidth',2);
ax2.XAxisLocation='bottom';
ax2.YAxisLocation='right';
ax2.Color='none';
ax2.XColor=[0.64 0.08 0.18];
ax2.YColor=[0.64 0.08 0.18];
ax2.YLim=[1.0035 1.0125]*10^3;
ax2.XLim=[1 14];
ax2.XTick=1:2:14;
ax2.XTickLabel={'20 Nov','22 Nov','24 Nov','26 Nov','28 Nov','30 Nov','2 Dec'};
ylabel('SLP ( hap )','FontName','Times New Roman','FontSize',12,'FontWeight','bold');
ax1.Box='off';ax2.Box='off';

















