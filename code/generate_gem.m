%generate_gem

clear
input_file = '/public/home/ciac_liwb/metabolism/result/gem.csv';
gem_name = textread(input_file, '%s', 'delimiter', '\t');
gem_name = reshape(gem_name,2,length(gem_name)/2);
gem_name = gem_name';


num1 = 0;
num2 = 0;
num3 = 0;
for i = 1:size(gem_name,1)
    if strcmp(gem_name{i,2},'g')
        num1 = num1 + 1;
        genes{num1} = gem_name{i,1};
    end
    if strcmp(gem_name{i,2},'e')
        num2 = num2 + 1;
        enzymes{num2} = gem_name{i,1};
    end
    if strcmp(gem_name{i,2},'m')
        num3 = num3 + 1;
        metabolites{num3} = gem_name{i,1};
    end    
end

save('gem_name.mat','gem_name','genes','enzymes','metabolites');