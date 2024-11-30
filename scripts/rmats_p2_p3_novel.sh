#!/bin/bash
#Run rmats on clytia files bulk rna

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/p2.txt --s2 /home/tchari/clytia_alt_splice/p3.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 75 --variable-read-length --nthread 10 --novelSS --od /data/tchari/rmats_out/rmats_p2_p3_novel --tmp /data/tchari/rmats_out/rmats_p2_p3_novel_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_p2_p3_novel.tar.gz /data/tchari/rmats_out/rmats_p2_p3_novel/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_p2_p3_novel/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_p2_p3_novel/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_p2_p3_novel/SE.MATS.JC.txt
