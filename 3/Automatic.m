%%% Automatically goes over all cases in Database folder and executes
%%% Stat_Plot on each

%%% The outputs are a file called Surface_features.csv that contains
%%% surface info
%%% A plot of surface height distribution is also saved in the same 
%%% directory for each case

clear
clc
close all

DATA_FOLDER   = 'Database';
RESULT_FOLDER = '.';

n_data=46    % set number of data files


s0=["SM"];
s1=["r4","r6"];
s2=["Re1000"];
s3=["inc1","inc2","inc3"];
s4=["por1","por2","por3"];
s5=["ES1","ES2","ES3"];
s6=["SGR","RND1","RND2","RND3","RND4","RND5"];
s7=["SGR","TURB","CUBE"];


iter1=1


for i = s1
    for j = s2(1)
        for k = s3
            ss1="chn_"+i+"_"+j+"_"+"reg"+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
            
            
        end
    end
end

for i = s1
    for j = s2(1)
        for k = s3
            
            ss1="chn_"+i+"_"+j+"_"+"rnd"+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
            
        end
    end
end



for i = s1
    for j = s2(1)
        for k = s4
            ss1="chn_"+i+"_"+j+"_"+"reg"+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
            
            
            
        end
    end
end

for i = s1
    for j = s2(1)
        for k = s4
            
            ss1="chn_"+i+"_"+j+"_"+"rnd"+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
            
        end
    end
end

for i = s1
    for j = s2(1)
        for k = s5
            ss1="chn_"+i+"_"+j+"_"+"reg"+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
        end
    end
end

for i = s1
    for j = s2(1)
        for k = s6
            ss1="chn_"+i+"_"+j+"_"+k;
            Set_Case
            Stat_Plot
            iter1=iter1+1
        end
    end
end


for i = s7
    ss1="chn_"+i;
    Set_Case
    Stat_Plot
    iter1=iter1+1
    
end



ss1="chn_r4_Re1000_rnd_por3_fullSpan";
Set_Case
Stat_Plot
iter1=iter1+1




