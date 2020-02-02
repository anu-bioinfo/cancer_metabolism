writerseqdata2 <-function(projstring)
{
library("TCGAbiolinks")
library("SummarizedExperiment")
library("biomaRt")
library("plyr")

projectname = paste("TCGA",projstring,sep="-")
query <- GDCquery(project = projectname, data.category = "Transcriptome Profiling", data.type = "Gene Expression Quantification", workflow.type = "HTSeq - FPKM-UQ")

pquery <- GDCprepare(query, directory = "/public/home/ciac_liwb/metabolism/GDCdata")

rseqdata <- assay(pquery)

rseqID <- get_IDs(rseqdata)





tmp_row1 = data.frame(ensembl_gene_id=rownames(rseqdata))


ensembl = useMart("ensembl",dataset="hsapiens_gene_ensembl")
tmp_row2 = getBM(attributes=c("ensembl_gene_id", "hgnc_symbol"), filters = "ensembl_gene_id", values=rownames(rseqdata), mart=ensembl)

tmp_row2_unduplicated = tmp_row2[!duplicated(tmp_row2[,1]),]
tmp_rownames = join(tmp_row1,tmp_row2_unduplicated)
rownames(rseqdata) = tmp_rownames[["hgnc_symbol"]]


filename = paste("/public/home/ciac_liwb/metabolism/rnaseq2/",projstring,".txt",sep="")
write.table(rseqdata, file = filename, append = FALSE, quote = FALSE, sep = ",", row.names = TRUE, col.names = NA)

return
}
