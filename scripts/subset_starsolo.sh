#!/bin/bash
#subset starsolo bams for cells
cd /data/tchari/rmats_out/rmats_fedstarv

samtools index fs_1to4_bamAligned.sortedByCoord.out.bam fs_1to4_bamAligned.sortedByCoord.out.bam.bai

samtools index fs_5to8_bamAligned.sortedByCoord.out.bam fs_5to8_bamAligned.sortedByCoord.out.bam.bai
samtools index starv_1to4_bamAligned.sortedByCoord.out.bam starv_1to4_bamAligned.sortedByCoord.out.bam.bai
samtools index starv_5to8_bamAligned.sortedByCoord.out.bam starv_5to8_bamAligned.sortedByCoord.out.bam.bai

samtools index neur_fs_1to4_bamAligned.sortedByCoord.out.bam neur_fs_1to4_bamAligned.sortedByCoord.out.bam.bai
samtools index neur_fs_5to8_bamAligned.sortedByCoord.out.bam neur_fs_5to8_bamAligned.sortedByCoord.out.bam.bai
samtools index neur_starv_1to4_bamAligned.sortedByCoord.out.bam neur_starv_1to4_bamAligned.sortedByCoord.out.bam.bai
samtools index neur_starv_5to8_bamAligned.sortedByCoord.out.bam neur_starv_5to8_bamAligned.sortedByCoord.out.bam.bai


subset-bam --bam fs_1to4_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/fed_1to4.txt --bam-tag CB:Z --log-level debug --out-bam fs_1to4_bamAligned.subset.bam

subset-bam --bam fs_5to8_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/fed_5to8.txt --bam-tag CB:Z --log-level debug --out-bam fs_5to8_bamAligned.subset.bam
 
subset-bam --bam starv_1to4_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/starv_1to4.txt --bam-tag CB:Z --log-level debug --out-bam starv_1to4_bamAligned.subset.bam

subset-bam --bam starv_5to8_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/starv_5to8.txt --bam-tag CB:Z --log-level debug --out-bam starv_5to8_bamAligned.subset.bam



subset-bam --bam neur_fs_1to4_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/neur_fed_1to4.txt --bam-tag CB:Z --log-level debug --out-bam neur_fs_1to4_bamAligned.subset.bam

subset-bam --bam neur_fs_5to8_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/neur_fed_5to8.txt --bam-tag CB:Z --log-level debug --out-bam neur_fs_5to8_bamAligned.subset.bam

subset-bam --bam neur_starv_1to4_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/neur_starv_1to4.txt --bam-tag CB:Z --log-level debug --out-bam neur_starv_1to4_bamAligned.subset.bam

subset-bam --bam neur_starv_5to8_bamAligned.sortedByCoord.out.bam --cell-barcodes ~/clytia_alt_splice/metadata/neur_starv_5to8.txt --bam-tag CB:Z --log-level debug --out-bam neur_starv_5to8_bamAligned.subset.bam
