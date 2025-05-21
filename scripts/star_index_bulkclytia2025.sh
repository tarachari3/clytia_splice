#!/bin/bash
#Build star index file for clytia

mdkir -p /home/tchari/clytia_alt_splice/reference/STAR_sjdb149
STAR --runThreadN 20 --runMode genomeGenerate --sjdbOverhang 149 --genomeSAindexNbases 13 --genomeDir /home/tchari/clytia_alt_splice/reference/STAR_sjdb149 --genomeFastaFiles /home/tchari/clytia_alt_splice/reference/clytia_hic_output.fasta --sjdbGTFfile /home/tchari/clytia_alt_splice/reference/transcripts.fa.transdecoder.genome_geneAndTrans.gtf
