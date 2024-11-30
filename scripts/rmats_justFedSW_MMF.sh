#!/bin/bash
#Run rmats on clytia files scrnaseq data

python /home/tchari/rmats_conda_env/bin/rmats.py --s1 /home/tchari/clytia_alt_splice/fed_sw.txt --gtf /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf --bi /home/tchari/clytia_alt_splice/reference/STAR -t single --readLength 151 --variable-read-length --nthread 10 --statoff --od /data/tchari/rmats_out/rmats_fedsw_mf --tmp /data/tchari/rmats_out/rmats_fedsw_mf_tmp

tar czf /home/tchari/clytia_alt_splice/rmats_out/rmats_fedsw_mf.tar.gz /data/tchari/rmats_out/rmats_fedsw_mf/A3SS.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf/A5SS.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf/MXE.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf/RI.MATS.JC.txt /data/tchari/rmats_out/rmats_fedsw_mf/SE.MATS.JC.txt


