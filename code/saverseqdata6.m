function saverseqdata6(projname)

input_dir = '/public/home/ciac_liwb/metabolism/rnaseq2/';
file_name = [input_dir projname '.txt'];
load('gly_tcaop_ge2.mat','gly','tcaop');

[rdata1,genes1,sample1] = extractrseqdata2(file_name,gly);
[rdata2,genes2,sample2] = extractrseqdata2(file_name,tcaop);

data_sign1 = ones(1,length(genes1));
data_sign2 = ones(1,length(genes2));

barcode1 = analyze_tcga_barcode2(sample1);
barcode2 = analyze_tcga_barcode2(sample2);

conditions1 = barcode1{4};
conditions2 = barcode2{4};
conditions1 = conditions1(~strcmp(barcode1{8},'A277')); 
conditions2 = conditions2(~strcmp(barcode2{8},'A277'));
rdata1 = rdata1(:,~strcmp(barcode1{8},'A277'));
rdata2 = rdata2(:,~strcmp(barcode2{8},'A277'));

save([projname '6.mat'],'rdata1','data_sign1','genes1','conditions1','rdata2','data_sign2','genes2','conditions2');
end