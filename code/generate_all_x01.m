%generate_all_x01
clear

load('/public/home/ciac_liwb/metabolism/findparams/output17/code/all_nx02.mat')

rng('shuffle')

all_x0 = 2 * rand(1e3,53);
% num = ceil(rand(1000,53)*3);

for i = 1 : 1000
   for ii = 31:53  
      all_x0(i,ii) = mean(all_nx0(:,ii)); 
   end
end

save('all_x01.mat','all_x0');