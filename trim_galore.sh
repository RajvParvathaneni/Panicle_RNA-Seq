#!/usr/bin/bash

/bioinfo/bin/trim_galore --gzip --fastqc --length 100 –illumina --fastqc \
--output_dir /home/rparvathaneni/Sorghum_Panicle_RNASeq/trimmed --paired N_1_1.fq N_1_2.fq
