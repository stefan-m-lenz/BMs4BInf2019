# This R-Script preprocesses the data to get the CSV-files in the repository.

# Load data from https://bmcbioinformatics.biomedcentral.com/articles/10.1186/s12859-016-1183-6#MOESM1
load("12859_2016_1183_MOESM1_ESM.rdata")
   # -> xmat: data frame with columns age, low.risk, FLT3, NPM1, WBC and SNPs and 308 patients
load("12859_2016_1183_MOESM2_ESM.rdata")

topVarianceCols <- function(x, nmaxcol) {
   variances <- sapply(seq_len(ncol(x)), function(i) var(x[,i]))
   x[, order(variances) <= nmaxcol]
}

snpdata <- xmat[,-c(1:5)]
snpnames <- sapply(seq_len(ncol(snpdata) / 2), function(i) gsub("_2$", "", colnames(snpdata)[2*i]))
snpdata <- sapply(seq_len(ncol(snpdata) / 2), function(i) snpdata[,2*i - 1] + snpdata[,2*i])
colnames(snpdata) <- snpnames

# Load data from https://doi.org/10.7910/DVN/JUMDLX
load("SNP_gene_info.Rdata")
load("SNP_position.Rdata")
gname <- c("MAP7","TRIM37","SCAMP4","EXT2","AKT1S1","MT3")
snpdata <- snpdata[, colnames(snpdata) %in% rownames(SNP_gene_info)[SNP_gene_info[,"genesymbol"] %in% gname]]

snpWithGep <- snpdata[SNP_con_GEP[,"SNP"],]

gepdata <- totalmat[, startsWith(colnames(totalmat), "IMAGE:")]
gepdata <- topVarianceCols(gepdata, 50)
gepWithSnp <- gepdata[rownames(gepdata) %in% SNP_con_GEP[,"GEP"],]

# data with both SNP measurement and gene expression profile
combSnpsGeps <- cbind(snpWithGep, gepWithSnp)

write.table(snpdata,file="snpdata.csv",sep=",", row.names = FALSE)
write.table(gepdata,file="gepdata.csv",sep=",", row.names = FALSE)
write.table(combSnpsGeps,file="combSnpsGeps.csv",sep=",", row.names = FALSE)
