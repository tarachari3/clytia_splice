#!/bin/bash
#Run rmats on clytia files scrnaseq nematocytes

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/nem.txt --s2 /home/tchari/clytia_alt_splice/nem_starv.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 151 --variable-read-length --nthread 10 --od /data/tchari/rmats_out/rmats_nem_starv --tmp /data/tchari/rmats_out/rmats_nem_starv_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_nem_starv.tar.gz /data/tchari/rmats_out/rmats_nem_starv/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv/SE.MATS.JC.txt
