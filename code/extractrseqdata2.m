function [rdata,genes,conditions] = extractrseqdata2(file_name,gene_str)


[tmp_data,tmp_genes,tmp_conditions] = readrseqdata(file_name);


all_index = [];
for i = 1: length(gene_str)
tmp_index = find(strcmp(tmp_genes,gene_str{i}));
all_index = [all_index tmp_index];

end

rdata = tmp_data(all_index,:);
genes = tmp_genes(all_index,:);
conditions = tmp_conditions;


return
end