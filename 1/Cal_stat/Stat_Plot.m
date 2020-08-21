
%%% Calculates geometrical statistics for each surface, saves in
%%% Surface_features.csv in the current folder

%%% Plots the surface height distribution, saves it in the same case folder


global vof ni nj nk x y z ks


DATA_FOLDER   = './';
RESULT_FOLDER = './';

case_name = 'chn_r6_Re1000_SGR'
input_dir              = [DATA_FOLDER,'/',case_name,'/'];
output_dir             = input_dir;


fileID = fopen([input_dir,'grd_res.txt'],'rt');
ni = str2num(fgetl(fileID))
nk = str2num(fgetl(fileID))

fclose(fileID);

fileID = fopen([input_dir,'ks.txt'],'rt');
ks = str2num(fgetl(fileID))

fclose(fileID);


x   = zeros(ni,nk);
z   = zeros(ni,nk);
hei = zeros(ni,nk);



M = dlmread([output_dir,'Surface.txt']);


for ii=0:ni-1
    for kk=0:nk-1
        x(ii+1,kk+1)  = M(ii*nk+kk+1,1);
        z(ii+1,kk+1)  = M(ii*nk+kk+1,2);
        hei(ii+1,kk+1)= M(ii*nk+kk+1,3);
        
    end
end

hei=hei-min(min(hei));
kc=max(max(hei));
nj=150;
y=linspace(0,1.05*kc,nj+1)';
xc=x(:,1);
zc=z(1,:)';
yc = 0.5*(y(2:end)+y(1:end-1));

vof=ones(ni,nj,nk);


for ii=1:ni
    for kk=1:nk
        
        vof(ii,:,kk)=(yc>hei(ii,kk))';
    end
end

%%% call surf_stat, where the statistics are calculated
surf_stat



fileID1 = fopen([RESULT_FOLDER,'/Surface_features.csv'],'w');
fprintf(fileID1,['Case name',	',',	...
    'kbar_ch',	',',	...
    'kc_ch',	',',	...
    'krms_ch',	',',	...
    'Ra_ch',	',',	...
    'incx_ch',	',',	...
    'incz_ch',	',',	...
    'pro_ch',	',',	...
    'ESx_ch',	',',	...
    'ESz_ch',	',',	...
    'sk_ch',	',',	...
    'ku_ch',	',',	...
    'ks',	',',	...
    'label',	...
    '\n']);




fprintf(fileID1,[case_name,			',',	...
    num2str(meanH,'%5.4f'),		',',	...
    num2str(maxH,'%5.4f'),		',',	...
    num2str(RMShei,'%5.4f'),	',',	...
    num2str(Ra,'%5.4f'),		',',	...
    num2str(incx,'%5.4f'),		',',	...
    num2str(incz,'%5.4f'),		',',	...
    num2str(pro,'%5.4f'),		',',	...
    num2str(ESx,'%5.4f'),		',',	...
    num2str(ESz,'%5.4f'),		',',	...
    num2str(Shei,'%5.4f'),		',',	...
    num2str(Khei,'%5.4f'),		',',	...
    num2str(ks,'%5.4f'),		',',	...
    'DNS',		...
    '\n']);



fclose(fileID1);





s=surf(x,z,hei);
s.EdgeColor = 'none';
title(case_name,'interpreter','latex','fontSize',12);
daspect([1 1 1])
view(3)
saveas( gcf(),[output_dir,'/Surface.png'], 'png' );



fprintf('done\n');


