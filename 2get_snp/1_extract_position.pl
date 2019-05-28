#perl 1_extract.pl    HG00096_snp.txt 2_pre-miRNA-snp.txt  1_HG00096.txt
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";

$output_file1=$ARGV[1];   # output file
open OUT_1, ">$output_file1"
          or die "Can not open $output_file : $!";

my @str=<IN_1>;

my $num=@str;


 for(my$i=0;$i<$num;$i++){
  my@symble1=split(/\s+/,$str[$i]);
    
        print OUT_1 "$symble1[1]\n";
     }

 
    



