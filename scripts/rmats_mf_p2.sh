#!/bin/bash
#Run rmats on clytia files bulk rna

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/mmf.txt --s2 /home/tchari/clytia_alt_splice/p2.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 75 --variable-read-length --nthread 10 --od /data/tchari/rmats_out/rmats_mf_p2 --tmp /data/tchari/rmats_out/rmats_mf_p2_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_mf_p2.tar.gz /data/tchari/rmats_out/rmats_mf_p2/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_p2/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_p2/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_p2/SE.MATS.JC.txt
