#!/bin/bash

/home/tchari/rmats_conda_env/bin/STAR-avx2 --twopassMode Basic --runThreadN 10 --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate --genomeDir /home/tchari/clytia_alt_splice/reference/STAR --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --outFileNamePrefix /data/tchari/fastqs/noFACS_clytia_bulk_2025_r2_bam/ --readFilesIn /data/tchari/fastqs/250211Wei_D25-3523-3_1_sequence.fastq.gz /data/tchari/fastqs/250211Wei_D25-3523-3_2_sequence.fastq.gz  --readFilesCommand zcat --outFilterMultimapNmax 1


/home/tchari/rmats_conda_env/bin/STAR-avx2 --twopassMode Basic --runThreadN 10 --outSAMstrandField intronMotif --outSAMtype BAM SortedByCoordinate --genomeDir /home/tchari/clytia_alt_splice/reference/STAR --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --outFileNamePrefix /data/tchari/fastqs/FACS_clytia_bulk_2025_r2_bam/ --readFilesIn /data/tchari/fastqs/250211Wei_D25-3524-3_1_sequence.fastq.gz /data/tchari/fastqs/250211Wei_D25-3524-3_2_sequence.fastq.gz  --readFilesCommand zcat --outFilterMultimapNmax 1




featureCounts -T 5 -p --countReadPairs \
-a /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf \
-t exon -g gene_id -o ./counts/noFACS_clytia_bulk_2025_r2.txt \
/data/tchari/fastqs/noFACS_clytia_bulk_2025_r2_bam/Aligned.sortedByCoord.out.bam

featureCounts -T 5 -p --countReadPairs \
-a /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf \
-t exon -g gene_id -o ./counts/FACS_clytia_bulk_2025_r2.txt \
/data/tchari/fastqs/FACS_clytia_bulk_2025_r2_bam/Aligned.sortedByCoord.out.bam


