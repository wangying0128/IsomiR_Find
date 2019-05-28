#perl 2_get_num.pl 3_pre-miRNA-snp.txt 4_pre-miRNA-snp.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";


$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str=<IN_1>;
my $num1=@str;
my$num=0;
 for(my$i=0;$i<$num1;$i=$i+$num+1){
   $num=0;
    my@symble1=split(/\s+/,$str[$i]);
    for(my$j=$i+1;$j<$num1;$j++){
      my@symble2=split(/\s+/,$str[$j]);
      if($symble1[0] eq $symble2[0]){
       $num++;

      }#if
    }#for
 my$t=$num+1;
  print OUT_1 "$symble1[0] $t\n";
 }#for


