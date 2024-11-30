#!/bin/bash
#Run rmats on clytia files bulk rna

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/mmf.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 75 --variable-read-length --nthread 10 --statoff --od /data/tchari/rmats_out/rmats_mf --tmp /data/tchari/rmats_out/rmats_mf_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_mf.tar.gz /data/tchari/rmats_out/rmats_mf/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_mf/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_mf/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_mf/SE.MATS.JC.txt

