#!/bin/bash

#sw and fed controls
umi_tools extract --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--stdout ./fastqs/fs_1to4_R1_fed.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_1to4_R2.fastq.gz \
--read2-out=./fastqs/fs_1to4_R2_fed.fastq.gz \
--whitelist=./fastqs/whitelist_fs_1to4_fed.txt & \

umi_tools extract --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--stdout ./fastqs/fs_5to8_R1_fed.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_5to8_R2.fastq.gz \
--read2-out=./fastqs/fs_5to8_R2_fed.fastq.gz \
--whitelist=./fastqs/whitelist_fs_5to8_fed.txt & \

umi_tools extract --stdin ./fastqs/stim_1to2_R1.fastq.gz \
--stdout ./fastqs/stim_1to2_R1_sw.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN \
--read2-in ./fastqs/stim_1to2_R2.fastq.gz \
--read2-out=./fastqs/stim_1to2_R2_sw.fastq.gz \
--whitelist=./fastqs/whitelist_stim_1to2_sw.txt & \

umi_tools extract --stdin ./fastqs/stim_3to4_R1.fastq.gz \
--stdout ./fastqs/stim_3to4_R1_sw.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN \
--read2-in ./fastqs/stim_3to4_R2.fastq.gz \
--read2-out=./fastqs/stim_3to4_R2_sw.fastq.gz \
--whitelist=./fastqs/whitelist_stim_3to4_sw.txt

