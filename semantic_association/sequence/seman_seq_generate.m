clear;clc
alldata=readtable('word_pairs192.csv');
run1=[1:4:192];
run2=[2:4:192];
run3=[3:4:192];
run4=[4:4:192];

for r=1:4
    id=randperm(48);
    runid=[r:4:192];
    for i=1:48
        stim_run(i,:)=alldata(runid(id(i)),:);
    end
    filename=sprintf('stim_run%d.csv',r);
    writetable(stim_run,filename);
end