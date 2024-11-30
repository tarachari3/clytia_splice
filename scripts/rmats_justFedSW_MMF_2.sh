#!/bin/bash
#Run rmats on clytia files scrnaseq data

python /home/tchari/rmats_conda_env/bin/rmats.py --b1 /home/tchari/clytia_alt_splice/fed_sw_bam.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf -t single --readLength 151 --variable-read-length --nthread 10 --statoff --od /data/tchari/rmats_out/rmats_fedsw_mf_2 --tmp /data/tchari/rmats_out/rmats_fedsw_mf_22_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_fedsw_mf_2.tar.gz /data/tchari/rmats_out/rmats_fedsw_mf_2/A3SS.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf_2/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf_2/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf_2/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf_2/SE.MATS.JC.txt


