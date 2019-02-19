clear;clc
alldata=readtable('alltrial_id208.csv');
run1=[1:4:208];
run2=[2:4:208];
run3=[3:4:208];
run4=[4:4:208];

for r=1:4
    id=randperm(52);
    runid=[r:4:208];
    for i=1:52
        stim_run(i,:)=alldata(runid(id(i)),:);
    end
    filename=sprintf('stim_run%d.csv',r);
    writetable(stim_run,filename);
end