IsomiR_Find operating requirement ��
1��Computer hardware requirements: due to the large chromosome data, the computer hard disk capacity of more than 300G.
2��The tools folder of software package includes:
For extracting all chromosome data from a given sample��GenomeAnalysisTK.jar ��human_g1k_v37.fasta��human_g1k_v37.dict��human_g1k_v37.fasta.fai��ViennaRNA-1.8.5,libsvm-3.20

IsomiR_Find folder:
1��1download:This folder includes the tools for download the sample data involving the 1000 genomes.
2��get_snp:This folder includes the program for constructing SNP-pre-miRNAs.
3��3_predict:There are four prediction softs for predicting four dicer sits of mature miRNAs.
4��example-HG00096��It is an example��HG00096�� which come from the 1000 genomes project, it includes all the implementation of our tool.
5��ViennaRNA-1.8.5:It is a soft package for miRNA second structure prediction.
6��libsvm-3.20 :It is a tool for SVM algorithm implementation.
7��miRSNPBase: Our SNP-pre-miRNA database. 

usage of IsomiR_Find��
Download our soft:IsomiR_Find��Our software performs callsnp according to karyotypic (chr1, chr2...Chr22, chrX, chrY��. 

Here, we prepare the sample data involving the 1000 genomes and including 23 Chromosome data��ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz��......and ALL.chrX.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz��
 
The execution steps are as follows (take HG00096 as example):
1 SNP extraction
setp 1��
#/IsomiR_Fing/1download/wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz

step 2��
#gunzip ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz 

step3��
#java -Xmx15g -jar GenomeAnalysisTK.jar -R human_g1k_v37.fasta -T SelectVariants -V ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf -o HG00096_chr1.vcf -sn HG00096

setp 4��
#rm -f ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
#rm -f ALL.chr1.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf
.......................................................
The execution of other chromosome data is the same as above��
#/IsomiR_Fing/1download/wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/release/20130502/ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
#gunzip ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz 
#java -Xmx15g -jar GenomeAnalysisTK.jar -R human_g1k_v37.fasta -T SelectVariants -V ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf -o HG00096_chr22.vcf -sn HG00096
#rm -f ALL.chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz
#rm -f ALL.$chr22.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf

The result data include��HG00096_chr1.vcf, HG00096_chr2.vcf.....HG00096_chr22.vcf,HG00096_chrX.vcf
......................................................................................

step 5:
#cp HG00096_ch1.vcf ../IsomiR_Find/2get_snp
#cp HG00096_ch2.vcf ../IsomiR_Find/2get_snp
#cp HG00096_chX.vcf ../IsomiR_Find/2get_snp
--------------------------------------------------------------------------
2 SNP-pre-miRNA construction
#perl main2_get_snp.pl HG00096
--------------------------------------------------------------------------
3 isoform miRNA identification
Taken the start sits of mature miRNA of 5' arm of pre-miRNA as example:
step 1:
Download the small RNA-sequencing data from https://www.ebi.ac.uk/arrayexpress/experiments/E-GEUV-2/samples/.For HG00096 sample,it is named hg00096.fastq
steip 2:
#cp 5_pre_miRNA_snp.txt ../IsomiR_Find/3predict/predict5_5
perl main.pl 5_pre_miRNA_snp.txt result1.txt result2.txt
step 3:
perl main1.pl result3.txt hg00096.fastq


Results��
1��../3predict/predict5_5/change.txt: The pre-miRNAs,matue miRNAs and SNPs which is associated with the isoform miRNAs.
2��../3predict/predict5_5/nochange.txt: The pre-miRNAs,matue miRNAs and SNPs which is associated with the normal miRNAs.
3��../3predict/predict5_5/isoform_5_5:The isoform miRNA candidates which are screened by the RNA-seq data of hg00096.





