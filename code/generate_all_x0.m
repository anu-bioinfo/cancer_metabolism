%generate_all_x0
clear


all_x0 = [5 * rand(1e3,30) rand(1e3,23) ];

for i = 1 : 1000
%11.3
axp = 11.3;
tmp_x1 = axp * rand();
tmp_x2 = (axp-tmp_x1) * rand();
all_x0(i,47) = tmp_x1;
all_x0(i,48) = tmp_x2;
all_x0(i,49) = axp - tmp_x1 - tmp_x2;

%1.35
nadx = 1.35;
all_x0(i,50) = nadx * rand();
all_x0(i,51) = nadx - all_x0(i,50);
end

save('all_x0.mat','all_x0');