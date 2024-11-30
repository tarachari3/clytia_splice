#!/bin/bash
#Run rmats on clytia files scrnaseq nematocytes

python /home/tchari/rmats_conda_env/bin/rmats.py --b1 /home/tchari/clytia_alt_splice/nem_bam.txt --b2 /home/tchari/clytia_alt_splice/nem_starv_bam.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf -t single --readLength 151 --variable-read-length --nthread 10 --od /data/tchari/rmats_out/rmats_nem_starv_2 --tmp /data/tchari/rmats_out/rmats_nem_starv_22_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_nem_starv_2.tar.gz /data/tchari/rmats_out/rmats_nem_starv_2/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv_2/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv_2/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_nem_starv_2/SE.MATS.JC.txt
