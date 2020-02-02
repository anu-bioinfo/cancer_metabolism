function [rseq_data,gene_symbols,sample_conditions] = readrseqdata(file_name)

tmp_data = readtable(file_name,'ReadVariableNames',false);
gene_symbols = table2cell(tmp_data(2:end,1));
sample_conditions = table2cell(tmp_data(1,2:end));

clear tmp_data; 

rseq_data = csvread(file_name,1,1);

return;

end