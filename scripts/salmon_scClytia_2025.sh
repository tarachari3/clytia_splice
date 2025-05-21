#!/bin/bash

#wget --content-disposition -i /home/tchari/clytia_alt_splice/starvFile.txt 

#cat FT-SA16888_S1_L004_R1_001.fastq.gz FT-SA16889_S2_L004_R1_001.fastq.gz FT-SA16890_S3_L004_R1_001.fastq.gz FT-SA16891_S4_L004_R1_001.fastq.gz > fs_1to4_R1.fastq.gz

#cat FT-SA16888_S1_L004_R2_001.fastq.gz FT-SA16889_S2_L004_R2_001.fastq.gz FT-SA16890_S3_L004_R2_001.fastq.gz FT-SA16891_S4_L004_R2_001.fastq.gz > fs_1to4_R2.fastq.gz

#cat FT-SA16892_S5_L004_R1_001.fastq.gz FT-SA16893_S6_L004_R1_001.fastq.gz FT-SA16894_S7_L004_R1_001.fastq.gz FT-SA16895_S8_L004_R1_001.fastq.gz > fs_5to8_R1.fastq.gz

#cat FT-SA16892_S5_L004_R2_001.fastq.gz FT-SA16893_S6_L004_R2_001.fastq.gz FT-SA16894_S7_L004_R2_001.fastq.gz FT-SA16895_S8_L004_R2_001.fastq.gz > fs_5to8_R2.fastq.gz

salmon alevin -l ISR -1 fs_1to4_R1.fastq.gz -2 fs_1to4_R2.fastq.gz --chromium  -i /home/tchari/clytia_alt_splice/reference/clytia_transcripts_index -p 10 -o alevin_fs1to4 --tgMap /home/tchari/clytia_alt_splice/reference/t2t.txt --dumpMtx

salmon alevin -l ISR -1 fs_5to8_R1.fastq.gz -2 fs_5to8_R2.fastq.gz --chromium  -i /home/tchari/clytia_alt_splice/reference/clytia_transcripts_index -p 10 -o alevin_fs5to8 --tgMap /home/tchari/clytia_alt_splice/reference/t2t.txt --dumpMtx
