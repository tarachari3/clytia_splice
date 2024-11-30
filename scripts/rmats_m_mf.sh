#!/bin/bash
#Run rmats on clytia files bulk rna

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/mmf.txt --s2 /home/tchari/clytia_alt_splice/male.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 75 --variable-read-length --nthread 10 --od /data/tchari/rmats_out/rmats_mf_m --tmp /data/tchari/rmats_out/rmats_mf_m_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_mf_m.tar.gz /data/tchari/rmats_out/rmats_mf_m/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_m/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_m/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_mf_m/SE.MATS.JC.txt
