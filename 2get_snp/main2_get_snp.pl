#perl main.pl test_1.txt result1.txt result2.txt
#model name chara_svm.txt.scale.model
#change 0_get_str.pl split()
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
my$in1=$input_file_1."_chr1.vcf";
my$out1=$input_file_1."_chr1_1.txt";
my$out11=$input_file_1."_chr1_p.txt";
my$in2=$input_file_1."_chr2.vcf";
my$out2=$input_file_1."_chr2_1.txt";
my$in3=$input_file_1."_chr3.vcf";
my$out3=$input_file_1."_chr3_1.txt";
my$in4=$input_file_1."_chr4.vcf";
my$out4=$input_file_1."_chr4_1.txt";
my$in5=$input_file_1."_chr5.vcf";
my$out5=$input_file_1."_chr5_1.txt";
my$in6=$input_file_1."_chr6.vcf";
my$out6=$input_file_1."_chr6_1.txt";
my$in7=$input_file_1."_chr7.vcf";
my$out7=$input_file_1."_chr7_1.txt";
my$in8=$input_file_1."_chr8.vcf";
my$out8=$input_file_1."_chr8_1.txt";
my$in9=$input_file_1."_chr9.vcf";
my$out9=$input_file_1."_chr9_1.txt";
my$in10=$input_file_1."_chr10.vcf";
my$out10=$input_file_1."_chr10_1.txt";
my$in11=$input_file_1."_chr11.vcf";
my$out11=$input_file_1."_chr11_1.txt";
my$in12=$input_file_1."_chr12.vcf";
my$out12=$input_file_1."_chr12_1.txt";
my$in13=$input_file_1."_chr13.vcf";
my$out13=$input_file_1."_chr13_1.txt";
my$in14=$input_file_1."_chr14.vcf";
my$out14=$input_file_1."_chr14_1.txt";
my$in15=$input_file_1."_chr15.vcf";
my$out15=$input_file_1."_chr15_1.txt";
my$in16=$input_file_1."_chr16.vcf";
my$out16=$input_file_1."_chr16_1.txt";
my$in17=$input_file_1."_chr17.vcf";
my$out17=$input_file_1."_chr17_1.txt";
my$in18=$input_file_1."_chr18.vcf";
my$out18=$input_file_1."_chr18_1.txt";
my$in19=$input_file_1."_chr19.vcf";
my$out19=$input_file_1."_chr19_1.txt";
my$in20=$input_file_1."_chr20.vcf";
my$out20=$input_file_1."_chr20_1.txt";
my$in21=$input_file_1."_chr21.vcf";
my$out21=$input_file_1."_chr21_1.txt";
my$in22=$input_file_1."_chr22.vcf";
my$out22=$input_file_1."_chr22_1.txt";
my$inX=$input_file_1."_chrX.vcf";
my$outX=$input_file_1."_chrX_1.txt";
my$out=$input_file_1."_snp.txt";

use Cwd;
my$test_dir=getcwd;

	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in1  > $out1`;
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in2  > $out2`;
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in3  > $out3`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in4  > $out4`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in5  > $out5`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in6  > $out6`;
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in7  > $out7`;
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in8  > $out8`;	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in9  > $out9`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in10  > $out10`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in11  > $out11`;
	

	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in12  > $out12`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in13 > $out13`;
	

`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in14  > $out14`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in15  > $out15`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in16  > $out16`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in17  > $out17`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in18  > $out18`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in19  > $out19`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in20  > $out20`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in21  > $out21`;
	
`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $in22  > $out22`;

`egrep '0\\|1\|0\\|2\|1\\|0\|1\\|1\|1\\|2\|2\\|2\|2\\|1\|2\\|0'  $inX  > $outX`;
`perl 1_extract_position.pl $out1 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
`perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt  pre-miRNA-snp_1.txt`;

`perl 1_extract_position.pl $out2 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_2.txt\n");

`perl 1_extract_position.pl $out3 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_3.txt\n");

`perl 1_extract_position.pl $out4 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_4.txt\n");

`perl 1_extract_position.pl $out5 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_5.txt\n");

`perl 1_extract_position.pl $out6 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_6.txt\n");

`perl 1_extract_position.pl $out7 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_7.txt\n");

`perl 1_extract_position.pl $out8 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_8.txt\n");

`perl 1_extract_position.pl $out9 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_9.txt\n");

`perl 1_extract_position.pl $out10 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_10.txt\n");

`perl 1_extract_position.pl $out11 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_11.txt\n");

`perl 1_extract_position.pl $out12 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_12.txt\n");

`perl 1_extract_position.pl $out13 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_13.txt\n");

`perl 1_extract_position.pl $out14 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_14.txt\n");

`perl 1_extract_position.pl $out15 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_15.txt\n");


`perl 1_extract_position.pl $out16 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_16.txt\n");

`perl 1_extract_position.pl $out17 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_17.txt\n");

`perl 1_extract_position.pl $out18 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_18.txt\n");

`perl 1_extract_position.pl $out19 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_19.txt\n");


`perl 1_extract_position.pl $out20 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_20.txt\n");


`perl 1_extract_position.pl $out21 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_21.txt\n");


`perl 1_extract_position.pl $out22 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_22.txt\n");


`perl 1_extract_position.pl $outX 1.txt`;
`perl 2_pre_snp.pl 3_pre-miRNA-snp.txt 1.txt id.txt`;
system("perl 3_extract_snp.pl id.txt 3_pre-miRNA-snp.txt pre-miRNA-snp_X.txt\n");

`cat pre-miRNA-snp_1.txt pre-miRNA-snp_2.txt  pre-miRNA-snp_3.txt pre-miRNA-snp_4.txt pre-miRNA-snp_5.txt pre-miRNA-snp_6.txt pre-miRNA-snp_7.txt pre-miRNA-snp_8.txt pre-miRNA-snp_9.txt pre-miRNA-snp_10.txt pre-miRNA-snp_11.txt pre-miRNA-snp_12.txt pre-miRNA-snp_13.txt pre-miRNA-snp_14.txt pre-miRNA-snp_15.txt pre-miRNA-snp_16.txt pre-miRNA-snp_17.txt pre-miRNA-snp_18.txt pre-miRNA-snp_19.txt pre-miRNA-snp_20.txt pre-miRNA-snp_21.txt pre-miRNA-snp_22.txt pre-miRNA-snp_X.txt >pre-miRNA-snp.txt`;

`sort pre-miRNA-snp.txt |uniq -c  >pre-miRNA-snp1.txt`;

`perl 4_filter.pl pre-miRNA-snp1.txt pre-miRNA_snp2.txt`;

if(system("perl 5_get_num.pl pre-miRNA_snp2.txt  4_pre-miRNA-snp.txt\n")){
	
}
if(system("perl 6_snp_miRNA.pl pre-miRNA_snp2.txt 4_pre-miRNA-snp.txt  5_pre_miRNA_snp.txt\n")){
	
}
system("rm -f id.txt");
system("rm -f 1.txt");
system("rm -f 4_pre-miRNA-snp.txt");
#system("rm -f pre-miRNA-snp.txt");
system("rm -f pre-miRNA-snp1.txt");
#system("rm -f pre-miRNA-snp2.txt");
system("rm -f pre-miRNA-snp_1.txt");
system("rm -f pre-miRNA-snp_2.txt");
system("rm -f pre-miRNA-snp_3.txt");
system("rm -f pre-miRNA-snp_4.txt");
system("rm -f pre-miRNA-snp_5.txt");
system("rm -f pre-miRNA-snp_6.txt");
system("rm -f pre-miRNA-snp_7.txt");
system("rm -f pre-miRNA-snp_8.txt");
system("rm -f pre-miRNA-snp_9.txt");
system("rm -f pre-miRNA-snp_10.txt");
system("rm -f pre-miRNA-snp_11.txt");
system("rm -f pre-miRNA-snp_12.txt");
system("rm -f pre-miRNA-snp_13.txt");
system("rm -f pre-miRNA-snp_14.txt");
system("rm -f pre-miRNA-snp_15.txt");
system("rm -f pre-miRNA-snp_16.txt");
system("rm -f pre-miRNA-snp_17.txt");
system("rm -f pre-miRNA-snp_18.txt");
system("rm -f pre-miRNA-snp_19.txt");
system("rm -f pre-miRNA-snp_20.txt");
system("rm -f pre-miRNA-snp_21.txt");
system("rm -f pre-miRNA-snp_22.txt");
system("rm -f pre-miRNA-snp_X.txt");
system("rm -f $out2");
system("rm -f $out1");
system("rm -f $out2");
system("rm -f $out3");
system("rm -f $out4");
system("rm -f $out5");
system("rm -f $out6");
system("rm -f $out7");
system("rm -f $out8");
system("rm -f $out9");
system("rm -f $out10");
system("rm -f $out11");
system("rm -f $out12");
system("rm -f $out13");
system("rm -f $out14");
system("rm -f $out15");
system("rm -f $out16");
system("rm -f $out17");
system("rm -f $out18");
system("rm -f $out19");
system("rm -f $out20");
system("rm -f $out21");
system("rm -f $out22");
system("rm -f $outX");
