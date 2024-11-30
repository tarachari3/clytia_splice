#!/bin/bash

/home/tchari/rmats_conda_env/bin/STAR-avx2 --twopassMode Basic --runThreadN 10 --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate --genomeDir /home/tchari/clytia_alt_splice/reference/STAR --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --outFileNamePrefix /data/tchari/rmats_out/rmats_fedsw_mf_2_tmp/fed_sw_bam1_1/ --readFilesIn /data/tchari/fastqs/fs_R2_fed.fastq.gz --readFilesCommand zcat --outFilterMultimapNmax 1

/home/tchari/rmats_conda_env/bin/STAR-avx2 --twopassMode Basic --runThreadN 10 --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate --genomeDir /home/tchari/clytia_alt_splice/reference/STAR --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --outFileNamePrefix /data/tchari/rmats_out/rmats_fedsw_mf_2_tmp/fed_sw_bam1_2/ --readFilesIn /data/tchari/fastqs/stim_R2_sw.fastq.gz --readFilesCommand zcat --outFilterMultimapNmax 1

