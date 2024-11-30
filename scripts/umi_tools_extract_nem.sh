#!/bin/bash

#nem starv rep1 adnd rep2
umi_tools extract --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--stdout ./fastqs/fs_1to4_R1_nem14_starv.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_1to4_R2.fastq.gz \
--read2-out=./fastqs/fs_1to4_R2_nem14_starv.fastq.gz \
--whitelist=./fastqs/whitelist_fs_1to4_nem14_starv.txt & \

umi_tools extract --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--stdout ./fastqs/fs_5to8_R1_nem14_starv.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_5to8_R2.fastq.gz \
--read2-out=./fastqs/fs_5to8_R2_nem14_starv.fastq.gz \
--whitelist=./fastqs/whitelist_fs_5to8_nem14_starv.txt & \

umi_tools extract --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--stdout ./fastqs/fs_1to4_R1_nem23_starv.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_1to4_R2.fastq.gz \
--read2-out=./fastqs/fs_1to4_R2_nem23_starv.fastq.gz \
--whitelist=./fastqs/whitelist_fs_1to4_nem14_starv.txt & \

umi_tools extract --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--stdout ./fastqs/fs_5to8_R1_nem23_starv.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_5to8_R2.fastq.gz \
--read2-out=./fastqs/fs_5to8_R2_nem23_starv.fastq.gz \
--whitelist=./fastqs/whitelist_fs_5to8_nem23_starv.txt & \


#nem fed rep1 adnd rep2
umi_tools extract --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--stdout ./fastqs/fs_1to4_R1_nem14.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_1to4_R2.fastq.gz \
--read2-out=./fastqs/fs_1to4_R2_nem14.fastq.gz \
--whitelist=./fastqs/whitelist_fs_1to4_nem14.txt & \

umi_tools extract --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--stdout ./fastqs/fs_5to8_R1_nem14.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_5to8_R2.fastq.gz \
--read2-out=./fastqs/fs_5to8_R2_nem14.fastq.gz \
--whitelist=./fastqs/whitelist_fs_5to8_nem14.txt & \

umi_tools extract --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--stdout ./fastqs/fs_1to4_R1_nem23.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_1to4_R2.fastq.gz \
--read2-out=./fastqs/fs_1to4_R2_nem23.fastq.gz \
--whitelist=./fastqs/whitelist_fs_1to4_nem14.txt & \

umi_tools extract --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--stdout ./fastqs/fs_5to8_R1_nem23.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--read2-in ./fastqs/fs_5to8_R2.fastq.gz \
--read2-out=./fastqs/fs_5to8_R2_nem23.fastq.gz \
--whitelist=./fastqs/whitelist_fs_5to8_nem23.txt
