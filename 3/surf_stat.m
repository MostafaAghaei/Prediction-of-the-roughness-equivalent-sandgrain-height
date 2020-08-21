

% ---------------  Effective slopes and inclination angles  ----------------------

[zz,xx]=meshgrid(zc,xc);

[incx,incz,ESx,ESz] = func_ES(hei, xx,zz);
incx=atan(incx/2);
incz=atan(incz/2);



% ---------------  Porosity  ---------------------

area_r=1-mean(mean(vof,1),3)';
jpor=find(area_r<=0,1);
pro=1-sum(area_r.*diff(y))/y(jpor);



% ---------------  Moments  ----------------------

meanH = mean(mean(hei));
maxH = max(max(hei));
minH = min(min(hei));
Ra  = mean(reshape(abs(hei - meanH),1,[]));

hei1D= reshape(hei,1,[]);
RMShei = sqrt( mean((hei1D - mean(hei1D)).^2));
Shei = (mean((hei1D - mean(hei1D)).^3))/RMShei^3;
Khei = (mean((hei1D - mean(hei1D)).^4))/RMShei^4;



fprintf('%%%% meanhei %5.5f\n',meanH)
fprintf('%%%% maxhei %5.5f\n',maxH)
fprintf('%%%% minhei %5.5f\n',minH)
fprintf('%%%% k_rms = %3.5f\n',RMShei);
fprintf('%%%% inc = %3.5f and %3.5f in x and z\n',incx,incz);
fprintf('%%%% ES_abs = %3.5f and %3.5f in x and z\n',ESx,ESz);
fprintf('%%%% Ra=%4.5f\n',Ra);
fprintf('%%%% Porosity=%4.5f\n',pro);
fprintf('%%%% skewness=%4.5f\n',Shei);
fprintf('%%%% kurtosis=%4.5f\n',Khei);

