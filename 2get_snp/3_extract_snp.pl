#perl 1_extract.pl    2_pre-miRNA-snp.txt HG00096_snp.txt   1_HG00096.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";

$output_file1=$ARGV[2];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str=<IN_1>;
my @str1=<IN_2>;
my $num=@str;
my $num1=@str1;

 for(my$i=0;$i<$num;$i++){
  my@symble1=split(/\s+/,$str[$i]);
    for(my$j=0;$j<$num1;$j++){
      my@symble2=split(/\s+/,$str1[$j]);
      if($symble1[0] eq $symble2[3]){
        print OUT_1 "$str1[$j]";
     }
}
}
   
    



