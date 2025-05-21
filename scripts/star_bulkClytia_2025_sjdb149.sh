#!/bin/bash


/home/tchari/rmats_conda_env/bin/STAR-avx2 --twopassMode Basic --runThreadN 10 --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate --genomeDir /home/tchari/clytia_alt_splice/reference/STAR_sjdb149 --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --outFileNamePrefix /data/tchari/fastqs/FACS_clytia_bulk_2025_sjdb149/ --readFilesIn /data/tchari/fastqs/250211Wei_D25-3524-3_1_sequence.fastq.gz,/data/tchari/fastqs/250211Wei_D25-3524-4_1_sequence.fastq.gz /data/tchari/fastqs/250211Wei_D25-3524-3_2_sequence.fastq.gz,/data/tchari/fastqs/250211Wei_D25-3524-4_2_sequence.fastq.gz  --readFilesCommand zcat --outFilterMultimapNmax 1 --outReadsUnmapped Fastx --sjdbOverhang 149





