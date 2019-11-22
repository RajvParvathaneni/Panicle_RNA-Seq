#!/bin/bash

#quantification with salmon
#declare the variables
INDEX=/shares/aeveland_share/private/Data/References/Ref_setaria/Sviridis_500_v2.1.cds_primaryTranscriptOnlysalmon_index
DATAinput=/shares/aeveland_share/private/Data/RNAseq/RAW/Sv_panicle_dev_data_series/data
DATAoutput=/home/jyang/RNA_seq/A10_IM_brl1

#paired-end, four replicates except for 12 which has 3 replicates 
for i in `cat listPE`; \
do salmon \
quant -i ${INDEX} -l A -p 8 --validateMappings --numBootstraps 30 \
-1 ${DATAinput}/${i}_r1.fastq.gz \
-2 ${DATAinput}/${i}_r2.fastq.gz \
-o ${DATAoutput}/${i}_quant; done

#single-end, four replicates 
for j in `cat listSE`; \
do salmon \
quant -i ${INDEX} -l A -p 8 --validateMappings --numBootstraps 30 \
-r ${DATAinput}/${j}_r1.fastq.gz  \
-o ${DATAoutput}/${j}_quant; done 

