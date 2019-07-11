library(XML)

#---PreProcessing Pubmed Data for Fasttext run
list_pubmed_files <- list.files("../../pubmed/")
file.create("../../abstracts.txt")
for(file_name in list_pubmed_files){
  xmltop <- xmlRoot(xmlParse(readLines(gzfile(paste0("../../pubmed/",filename)))))
  abs_text <- xmlSApply(xmltop, function(i) xmlValue(i[['MedlineCitation']][['Article']][['Abstract']][['AbstractText']]))
  write(unlist(abs_text),"../../abstracts.txt", append = TRUE)
} # done
