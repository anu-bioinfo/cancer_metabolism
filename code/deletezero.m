function  [output_rdata,output_data_sign,output_genes]=  deletezero(rdata,data_sign,genes)

index  = find(sum(rdata,2)~=0);

output_rdata     = rdata(index,:);
output_data_sign = data_sign(index);
output_genes     = genes(index);

end