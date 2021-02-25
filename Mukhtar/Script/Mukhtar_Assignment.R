setwd("C:/Users/User/Stats4LifeScientists")

#load necessary files

library(dplyr)
library(readr)

#read the SNP data
SNP_df <- read_tsv("./Mukhtar/Original/SNPsOriginal.txt", col_names = FALSE, skip = 1)

#get the last 1000 names and transpose
tail_data <- data.frame(tail(SNP_df, 1000,) %>%
                          t())

#get the names of the chromosomes
names(tail_data) <- tail_data[1,]

tail_data = tail_data[2:nrow(tail_data),]

#merge every sequence to a single character
output =data.frame(matrix(ncol=0,nrow=0))

for (i in colnames(tail_data)){
  output = paste(tail_data[[paste(i)]], collapse = '') %>%
    rbind(output)
  }
#get the names of the sequence
dd = data.frame(names(tail_data))
#Add greater than sign for beginning fasta files
gt = rep('>', 1000)
seperator = rep('\n', 1000)

#Concatenate everything to a dataframe
fasta <- cbind(gt, dd, Seperator, output)        

final = data.frame(paste(fasta[[1]], fasta[[2]] , fasta[[3]], fasta[[4]], sep=""))

final = noquote(final)
#Write data to file

write.table(final, file = "output.fasta", sep = "\t",
            row.names = FALSE)