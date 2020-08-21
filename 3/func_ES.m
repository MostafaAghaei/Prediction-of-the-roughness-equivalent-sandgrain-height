function [incx,incz,ESx,ESz] = func_ES(hei, xx,zz)
% Calcualte effective ratio from height matrix
% hei(ni+1,nk+1), at the surface points
% xx,zz: generated from x(ni+1) and z(nk+1) from meshgrid

x = xx(:,1);
z = zz(1,:);
ni = size(x,1);
nk = size(z,2);

Sx = (hei(2:end,:)-hei(1:end-1,:))./(xx(2:end,:)-xx(1:end-1,:));
Sz = (hei(:,2:end)-hei(:,1:end-1))./(zz(:,2:end)-zz(:,1:end-1));
ESxf=0;
ESzf=0;
for i=1:ni
    for k=1:nk
        if(i<ni)
            if Sx(i,k)>0
                ESxf=ESxf+1;
            elseif Sx(i,k)<0
                ESxf=ESxf-1;
            end
        end
        if(k<nk)
            if Sz(i,k)>0
                ESzf=ESzf+1;
            elseif Sz(i,k)<0
                ESzf=ESzf-1;
            end
        end
        
    end
end


inc1D= reshape(Sx,1,[]);
avginc = mean(inc1D);
maxinc = max(inc1D);
mininc = min(inc1D);
meaninc = 0.5*(maxinc + mininc);
RMSinc = sqrt( mean((inc1D - mean(inc1D)).^2));
Sinc = (mean((inc1D - mean(inc1D)).^3))/RMSinc^3;
Kinc = (mean((inc1D - mean(inc1D)).^4))/RMSinc^4;
incx=Sinc;

inc1D= reshape(Sz,1,[]);
avginc = mean(inc1D);
maxinc = max(inc1D);
mininc = min(inc1D);
meaninc = 0.5*(maxinc + mininc);
RMSinc = sqrt( mean((inc1D - mean(inc1D)).^2));
Sinc = (mean((inc1D - mean(inc1D)).^3))/RMSinc^3;
Kinc = (mean((inc1D - mean(inc1D)).^4))/RMSinc^4;
incz=Sinc;





Sx = abs(Sx);
Sz = abs(Sz);

S1d = reshape(Sx,1,[]);
a = atan(S1d);          % slope angle magnitude


% integration:
ESx = mean(mean(Sx));
ESz = mean(mean(Sz));
% dxx = diff(xx,1,1);dzz = diff(zz,1,2);
% ESx = sum(Sx.*dxx,1) / (max(x)/ni*sqrt(zSx));
% ESz = sum(Sz.*dzz,1) / (max(z)/nk*sqrt(zSz));

% ESx = mean(ESx);
% ESz = mean(ESz);

end
