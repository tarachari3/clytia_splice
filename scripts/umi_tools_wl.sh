#!/bin/bash

umi_tools whitelist --stdin ./fastqs/fs_1to4_R1.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--set-cell-number=10000 \
--log2stderr > ./fastqs/whitelist_fs_1to4.txt & \

umi_tools whitelist --stdin ./fastqs/fs_5to8_R1.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNN \
--set-cell-number=10000 \
--log2stderr > ./fastqs/whitelist_fs_5to8.txt & \

umi_tools whitelist --stdin ./fastqs/stim_1to2_R1.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN \
--set-cell-number=10000 \
--log2stderr > ./fastqs/whitelist_stim_1to2.txt & \

umi_tools whitelist --stdin ./fastqs/stim_3to4_R1.fastq.gz \
--bc-pattern=CCCCCCCCCCCCCCCCNNNNNNNNNNNN \
--set-cell-number=10000 \
--log2stderr > ./fastqs/whitelist_stim_3to4.txt
