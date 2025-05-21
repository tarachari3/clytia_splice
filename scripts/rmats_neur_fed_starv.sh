#!/bin/bash
#Run rmats on clytia files scrnaseq data

python /home/tchari/rmats_conda_env/bin/rmats.py --b1 /home/tchari/clytia_alt_splice/neur_fs_bam.txt --b2 /home/tchari/clytia_alt_splice/neur_starv_bam.txt --novelSS --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf -t single --readLength 151 --variable-read-length --nthread 10 --od /data/tchari/rmats_out/rmats_neur_fs --tmp /data/tchari/rmats_out/rmats_neur_fs_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_neur_fs.tar.gz /data/tchari/rmats_out/rmats_neur_fs/A3SS.MATS.JC.txt /data/tchari/rmats_out/rmats_neur_fs/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_neur_fs/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_neur_fs/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_neur_fs/SE.MATS.JC.txt


