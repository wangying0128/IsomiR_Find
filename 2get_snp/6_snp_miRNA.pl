#perl 3_snp-miRNA.pl 3_pre-miRNA-snp.txt 4_pre-miRNA-snp.txt 5_pre-miRNA-snp.txt
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
my $num1=@str;
my $num2=@str1;
my$j=0;
my$t=0;
  for(my$i=0;$i<$num1;$i=$i+$t){
    my@symble1=split(/\s+/,$str[$i]);
    my@symble2=split(/\s+/,$str1[$j]);
     $j++;
     $t=$symble2[1];
     if($symble2[1] eq '1'){
        my$str1=$symble1[1];
        substr($str1,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4]\n$str1\n";
      }#if

       if($symble2[1] eq '2'){
        my$str21=$symble1[1];
        substr($str21,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4]\n$str21\n";
         ########2###########
          my$i22=$i+1;
          my@symble22=split(/\s+/,$str[$i22]);
          my$str22=$symble22[1];
          substr($str22,$symble22[9]-1,1)="$symble22[6]";
          print OUT_1 ">$symble22[0]  $symble22[3] $symble22[4]\n$str22\n";
         #########21###########
         my$string22=$str22;
         substr($string22,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble22[3] $symble22[4]\n$string22\n";
      }#if

      if($symble2[1] eq '3'){
        #######1############
        my$str31=$symble1[1];
        substr($str31,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4]\n$str31\n"; 
         #########2##########
         my$i32=$i+1;
         my@symble32=split(/\s+/,$str[$i32]);
         my$str32=$symble32[1];
         substr($str32,$symble32[9]-1,1)="$symble32[6]";
         print OUT_1 ">$symble32[0] $symble32[3] $symble32[4]\n$str32\n";
         ############3##########
         my$i33=$i+2;
         my@symble33=split(/\s+/,$str[$i33]);
         my$str33=$symble33[1];
         substr($str33,$symble33[9]-1,1)="$symble33[6]";
         print OUT_1 ">$symble33[0] $symble33[3] $symble33[4]\n$str33\n";
         ############21###########
         my$str21=$str32;
         substr($str21,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble32[3] $symble32[4]\n$str21\n"; 
         ##########31###########
         my$str31=$str33;
         substr($str31,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble33[3] $symble33[4]\n$str31\n"; 
         ########23##############
         my$str23=$str32;
         substr($str23,$symble33[9]-1,1)="$symble33[6]"; 
         print OUT_1 ">$symble1[0]  $symble32[3] $symble32[4] $symble33[3] $symble33[4]\n$str23\n"; 
         #########231############
         my$str123=$str23;
         substr($str123,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble32[3] $symble32[4]  $symble33[3] $symble33[4]\n$str123\n"; 

      }#if
      if($symble2[1] eq '4'){
           #######1############
        my$str41=$symble1[1];
        substr($str41,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4]\n$str41\n"; 
         #########2##########
         my$i42=$i+1;
         my@symble42=split(/\s+/,$str[$i42]);
         my$str42=$symble42[1];
         substr($str42,$symble42[9]-1,1)="$symble42[6]";
         print OUT_1 ">$symble42[0] $symble42[3] $symble42[4]\n$str42\n";
         ############3##########
         my$i43=$i+2;
         my@symble43=split(/\s+/,$str[$i43]);
         my$str43=$symble43[1];
       #  substr($str43,$symble43[9]-1,1)="$symble43[6]";
         print OUT_1 ">$symble43[0] $symble43[3] $symble43[4]\n$str43\n";
         ###########4#################
         my$i44=$i+3;
         my@symble44=split(/\s+/,$str[$i44]);
         my$str44=$symble44[1];
         substr($str44,$symble44[9]-1,1)="$symble44[6]";
         print OUT_1 ">$symble44[0]  $symble44[3] $symble44[4]\n$str44\n";
         ############21###########
         my$str421=$str42;
         substr($str421,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble42[3] $symble42[4]\n$str421\n"; 
         ##########31###########
         my$str431=$str43;
         substr($str431,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble43[3] $symble43[4]\n$str431\n"; 
         ##########41###########
         my$str441=$str44;
         substr($str441,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble44[3] $symble44[4]\n$str441\n";
         ########23##############
         my$str423=$str42;
         substr($str423,$symble43[9]-1,1)="$symble43[6]"; 
         print OUT_1 ">$symble1[0]  $symble42[3] $symble42[4] $symble43[3] $symble43[4]\n$str423\n"; 

         ########24##############
         my$str424=$str42;
         substr($str424,$symble44[9]-1,1)="$symble44[6]"; 
         print OUT_1 ">$symble1[0]  $symble42[3] $symble42[4] $symble44[3] $symble44[4]\n$str424\n"; 
         ########34##############
         my$str434=$str43;
         substr($str434,$symble44[9]-1,1)="$symble44[6]"; 
         print OUT_1 ">$symble1[0]  $symble43[3] $symble43[4] $symble44[3] $symble44[4]\n$str434\n"; 
         #########231############
         my$str4123=$str423;
         substr($str4123,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble42[3] $symble42[4]  $symble43[3] $symble43[4]\n$str4123\n";
      
       #########423############
         my$str4423=$str423;
         substr($str4423,$symble44[9]-1,1)="$symble44[6]"; 
         print OUT_1 ">$symble1[0]  $symble42[3] $symble42[4] $symble43[3] $symble43[4]  $symble44[3] $symble44[4]\n$str4423\n";
         #########1423############
         my$str1423=$str4423;
         substr($str1423,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble42[3] $symble42[4] $symble43[3] $symble43[4]  $symble44[3] $symble44[4]\n$str1423\n";

      }


     if($symble2[1] eq '5'){
        #######1############
        my$str51=$symble1[1];
        substr($str51,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0] $symble1[3] $symble1[4]\n$str51\n"; 
         #########2##########
         my$i52=$i+1;
         my@symble52=split(/\s+/,$str[$i52]);
         my$str52=$symble52[1];
         substr($str52,$symble52[9]-1,1)="$symble52[6]";
         print OUT_1 ">$symble52[0] $symble52[3] $symble52[4]\n$str52\n";
         ############3##########
         my$i53=$i+2;
         my@symble53=split(/\s+/,$str[$i53]);
         my$str53=$symble53[1];
         substr($str53,$symble53[9]-1,1)="$symble53[6]";
         print OUT_1 ">$symble53[0] $symble53[3] $symble53[4]\n$str53\n";
         ###########4#################
         my$i54=$i+3;
         my@symble54=split(/\s+/,$str[$i54]);
         my$str54=$symble54[1];
         substr($str54,$symble54[9]-1,1)="$symble54[6]";
         print OUT_1 ">$symble54[0] $symble54[3] $symble54[4]\n$str54\n";
         ###########5#################
         my$i55=$i+4;
         my@symble55=split(/\s+/,$str[$i55]);
         my$str55=$symble55[1];
         substr($str55,$symble55[9]-1,1)="$symble55[6]";
         print OUT_1 ">$symble55[0] $symble55[3] $symble55[4]\n$str55\n";
         ############21###########
         my$str521=$str52;
         substr($str521,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]\n$str521\n"; 
         ##########31###########
         my$str531=$str53;
         substr($str531,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble53[3] $symble53[4]\n$str531\n"; 
         ##########41###########
         my$str541=$str54;
         substr($str541,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble54[3] $symble54[4]\n$str541\n";
          ##########51###########
         my$str551=$str55;
         substr($str551,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble55[3] $symble55[4]\n$str551\n";
        ########23##############
         my$str523=$str52;
         substr($str523,$symble53[9]-1,1)="$symble53[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble53[3] $symble53[4]\n$str523\n"; 

         ########24##############
         my$str524=$str52;
         substr($str524,$symble54[9]-1,1)="$symble54[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble54[3] $symble54[4]\n$str524\n"; 
        ########25##############
         my$str525=$str52;
         substr($str525,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble55[3] $symble55[4]\n$str525\n"; 
         ########34##############
         my$str534=$str53;
         substr($str534,$symble54[9]-1,1)="$symble54[6]"; 
         print OUT_1 ">$symble1[0]  $symble53[3] $symble53[4] $symble54[3] $symble54[4]\n$str534\n"; 
        ########35##############
         my$str535=$str53;
         substr($str535,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble53[3] $symble53[4] $symble55[3] $symble55[4]\n$str535\n"; 
         ########45##############
         my$str545=$str54;
         substr($str545,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble54[3] $symble54[4] $symble55[3] $symble55[4]\n$str545\n"; 
         #########231############
         my$str5123=$str523;
         substr($str5123,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]  $symble53[3] $symble53[4]\n$str5123\n";
        #########241############
         my$str5124=$str524;
         substr($str5124,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]  $symble54[3] $symble54[4]\n$str5124\n";
        #########251############
         my$str5125=$str525;
         substr($str5125,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]  $symble55[3] $symble55[4]\n$str5125\n";
         #########341############
         my$str5134=$str534;
         substr($str5134,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble53[3] $symble53[4]  $symble54[3] $symble54[4]\n$str5134\n";
         #########351############
         my$str5135=$str535;
         substr($str5135,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble53[3] $symble53[4]  $symble54[3] $symble54[4]\n$str5135\n";
        #########451############
         my$str5145=$str545;
         substr($str5145,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble54[3] $symble54[4]  $symble55[3] $symble55[4]\n$str5145\n";
         #########234############
         my$str5234=$str523;
         substr($str5234,$symble54[9]-1,1)="$symble54[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble53[3] $symble53[4]  $symble54[3] $symble54[4]\n$str5234\n";
         #########235############
         my$str5235=$str523;
         substr($str5235,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble53[3] $symble53[4]  $symble55[3] $symble55[4]\n$str5235\n";
         #########245############
         my$str5245=$str524;
         substr($str5245,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble54[3] $symble54[4]  $symble55[3] $symble55[4]\n$str5245\n";
         #########345############
         my$str5345=$str534;
         substr($str5345,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble53[3] $symble53[4] $symble54[3] $symble54[4]  $symble55[3] $symble55[4]\n$str5345\n";

        #########1234############
         my$str51234=$str5123;
         substr($str51234,$symble54[9]-1,1)="$symble54[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]  $symble53[3] $symble53[4]   $symble54[3] $symble54[4]\n$str51234\n";
         #########2345############
         my$str52345=$str5234;
         substr($str52345,$symble55[9]-1,1)="$symble55[6]"; 
         print OUT_1 ">$symble1[0]  $symble52[3] $symble52[4] $symble53[3] $symble53[4]  $symble54[3] $symble54[4]   $symble55[3] $symble55[4]\n$str52345\n";
         #########12345############
         my$str512345=$str52345;
         substr($str512345,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble52[3] $symble52[4]  $symble53[3] $symble53[4]   $symble54[3] $symble54[4]  $symble55[3] $symble55[4]\n$str512345\n";
      }#if
        
      if($symble2[1] eq '6'){
        #######1############
        my$str61=$symble1[1];
        substr($str61,$symble1[9]-1,1)="$symble1[6]";
        print OUT_1 ">$symble1[0] $symble1[3] $symble1[4]\n$str61\n"; 
         #########2##########
         my$i62=$i+1;
         my@symble62=split(/\s+/,$str[$i62]);
         my$str62=$symble62[1];
         substr($str62,$symble62[9]-1,1)="$symble62[6]";
         print OUT_1 ">$symble62[0] $symble62[3] $symble62[4]\n$str62\n";
         ############3##########
         my$i63=$i+2;
         my@symble63=split(/\s+/,$str[$i63]);
         my$str63=$symble63[1];
        # substr($str63,$symble63[9]-1,1)="$symble63[6]";
         print OUT_1 ">$symble63[0] $symble63[3] $symble63[4]\n$str63\n";
         ###########4#################
         my$i64=$i+3;
         my@symble64=split(/\s+/,$str[$i64]);
         my$str64=$symble64[1];
         substr($str64,$symble64[9]-1,1)="$symble64[6]";
         print OUT_1 ">$symble64[0]  $symble64[3] $symble64[4] \n$str64\n";
         ###########5#################
         my$i65=$i+4;
         my@symble65=split(/\s+/,$str[$i65]);
         my$str65=$symble65[1];
         substr($str65,$symble65[9]-1,1)="$symble65[6]";
         print OUT_1 ">$symble65[0]   $symble65[3] $symble65[4]\n$str65\n";
         ###########6#################
         my$i66=$i+5;
         my@symble66=split(/\s+/,$str[$i66]);
         my$str66=$symble66[1];
        
         substr($str66,$symble66[9]-1,1)="$symble66[6]";
         print OUT_1 ">$symble66[0]  $symble66[3] $symble66[4]\n$str66\n";
         ############21###########
         my$str621=$str62;
         substr($str621,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]\n$str621\n"; 
         ##########31###########
         my$str631=$str63;
         substr($str631,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]\n$str631\n"; 
         ##########41###########
         my$str641=$str64;
         substr($str641,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble64[3] $symble64[4]\n$str641\n";
          ##########51###########
         my$str651=$str65;
         substr($str651,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble65[3] $symble65[4]\n$str651\n";
          ##########61###########
         my$str661=$str66;
         substr($str661,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble66[3] $symble66[4]\n$str661\n";
        ########23##############
         my$str623=$str62;
        # substr($str623,$symble63[9]-1,1)="$symble63[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]\n$str623\n"; 

         ########24##############
         my$str624=$str62;
         substr($str624,$symble64[9]-1,1)="$symble64[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble64[3] $symble64[4]\n$str624\n"; 
        ########25##############
         my$str625=$str62;
         substr($str625,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble65[3] $symble65[4]\n$str625\n"; 
        ########26##############
         my$str626=$str62;
        # substr($str626,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble66[3] $symble66[4]\n$str626\n"; 
         ########34##############
         my$str634=$str63;
         substr($str634,$symble64[9]-1,1)="$symble64[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble64[3] $symble64[4]\n$str634\n"; 
        ########35##############
         my$str635=$str63;
         substr($str635,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble65[3] $symble65[4]\n$str635\n"; 
        ########36##############
         my$str636=$str63;
        substr($str636,$sym9-1,1)="$sym6"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble66[3] $symble66[4]\n$str636\n"; 
         ########45##############
         my$str645=$str64;
         substr($str645,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble64[3] $symble64[4] $symble65[3] $symble65[4]\n$str645\n"; 
         ########46##############
         my$str646=$str64;
        substr($str646,$sym9-1,1)="$sym6"; 
         print OUT_1 ">$symble1[0]  $symble64[3] $symble64[4] $symble66[3] $symble66[4]\n$str646\n"; 
         ########56##############
         my$str656=$str65;
         substr($str656,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble64[3] $symble65[4] $symble65[3] $symble66[4]\n$str656\n";
         #########231############
         my$str6123=$str623;
         substr($str6123,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]\n$str6123\n";
        #########241############
         my$str6124=$str624;
         substr($str6124,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble64[3] $symble64[4]\n$str6124\n";
        #########251############
         my$str6125=$str625;
         substr($str6125,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble65[3] $symble65[4]\n$str6125\n";
       #########261############
         my$str6126=$str626;
         substr($str6126,$symble1[9]-1,1)="$symble1[6]"; 
      print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble66[3] $symble66[4]\n$str6126\n";
         #########341############
         my$str6134=$str634;
         substr($str6134,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]\n$str6134\n";
        #########351############
         my$str6135=$str635;
         substr($str6135,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble65[3] $symble65[4]\n$str6135\n";
        #########361############
         my$str6136=$str636;
         substr($str6136,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble66[3] $symble66[4]\n$str6136\n";
        #########451############
         my$str6145=$str645;
         substr($str6145,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]\n$str6145\n";
        #########461############
         my$str6146=$str646;
         substr($str6146,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble64[3] $symble64[4]  $symble66[3] $symble66[4]\n$str6146\n";
        #########561############
         my$str6156=$str656;
         substr($str6156,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str6156\n";
         #########234############
         my$str6234=$str623;
         substr($str6234,$symble64[9]-1,1)="$symble64[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]\n$str6234\n";

         #########235############
         my$str6235=$str623;
         substr($str6235,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]  $symble65[3] $symble65[4]\n$str6235\n";
         #########236############
         my$str6236=$str623;
         substr($str6236,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]  $symble66[3] $symble66[4]\n$str6236\n";

         #########245############
         my$str6245=$str624;
         substr($str6245,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]\n$str6245\n";
         #########246############
         my$str6246=$str624;
         substr($str6246,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble64[3] $symble64[4]  $symble66[3] $symble66[4]\n$str6246\n";
         #########256############
         my$str6256=$str625;
         substr($str6256,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str6256\n";


         #########345############
         my$str6345=$str634;
         substr($str6345,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]\n$str6345\n";
         #########346############
         my$str6346=$str634;
         substr($str6346,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble64[3] $symble64[4]  $symble66[3] $symble66[4]\n$str6346\n";
        #########356############
         my$str6356=$str635;
         substr($str6356,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str6356\n";

        #########1234############
         my$str61234=$str6123;
         substr($str61234,$symble64[9]-1,1)="$symble64[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble64[3] $symble64[4]\n$str61234\n";
         #########1235############
         my$str61235=$str6123;
         substr($str61235,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble65[3] $symble65[4]\n$str61235\n";
           #########1236############
         my$str61236=$str6123;
         substr($str61236,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble66[3] $symble66[4]\n$str61236\n";
        
          #########1245############
         my$str61245=$str6124;
         substr($str61245,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble64[3] $symble64[4]   $symble65[3] $symble65[4]\n$str61245\n";
           #########1246############
         my$str61246=$str6124;
         substr($str61246,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble64[3] $symble64[4]   $symble66[3] $symble66[4]\n$str61246\n";

         #########1256############
         my$str61256=$str6125;
         substr($str61256,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble65[3] $symble65[4]   $symble66[3] $symble66[4]\n$str61256\n";
        #########1345############
         my$str61345=$str6134;
         substr($str61345,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]   $symble65[3] $symble65[4]\n$str61345\n";
         #########1346############
         my$str61346=$str6134;
         substr($str61346,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]   $symble66[3] $symble66[4]\n$str61346\n";
        #########1356############
         my$str61356=$str6135;
         substr($str61356,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble65[3] $symble65[4]   $symble66[3] $symble66[4]\n$str61356\n";
         #########1456############
         my$str61456=$str6145;
         substr($str61456,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]   $symble66[3] $symble66[4]\n$str61456\n";

         #########2345############
         my$str62345=$str6234;
         substr($str62345,$symble65[9]-1,1)="$symble65[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]   $symble65[3] $symble65[4]\n$str62345\n";
       #########2346############
         my$str62346=$str6234;
         substr($str62346,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]   $symble66[3] $symble66[4]\n$str62346\n";

        #########2456############
         my$str62456=$str6245;
         substr($str62456,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]   $symble66[3] $symble66[4]\n$str62456\n";
         #########3456############
         my$str63456=$str6345;
         substr($str63456,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble63[3] $symble63[4] $symble64[3] $symble64[4]  $symble65[3] $symble65[4]   $symble66[3] $symble66[4]\n$str63456\n";  

         #########12345############
         my$str612345=$str62345;
         substr($str612345,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble64[3] $symble64[4]  $symble65[3] $symble65[4]\n$str612345\n";
       #########12346############
         my$str612346=$str62346;
         substr($str612346,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble64[3] $symble64[4]  $symble66[3] $symble66[4]\n$str612346\n";

       #########13456############
         my$str613456=$str63456;
         substr($str613456,$symble1[9]-1,1)="$symble1[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble63[3] $symble63[4]  $symble64[3] $symble64[4]   $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str613456\n";
     #########23456############
         my$str623456=$str62345;
         substr($str623456,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble64[3] $symble64[4]  $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str623456\n";
       #########12345############
         my$str6123456=$str612345;
         substr($str6123456,$symble66[9]-1,1)="$symble66[6]"; 
         print OUT_1 ">$symble1[0]  $symble1[3] $symble1[4] $symble62[3] $symble62[4]  $symble63[3] $symble63[4]   $symble64[3] $symble64[4]  $symble65[3] $symble65[4]  $symble66[3] $symble66[4]\n$str6123456\n";
      }#if
     if($symble2[1] eq '7'){
          my$i70=$i+1;
          my$i71=$i+2;
          my$i72=$i+3;
          my$i73=$i+4;
          my$i74=$i+5;
          my$i75=$i+6;
      
         print OUT_1 "$str[$i]";
         print OUT_1 "$str[$i70]";
         print OUT_1 "$str[$i71]";
         print OUT_1 "$str[$i72]";
         print OUT_1 "$str[$i73]";
         print OUT_1 "$str[$i74]";
         print OUT_1 "$str[$i75]";
        
      }#if
    if($symble2[1] eq '8'){
          my$i80=$i+1;
          my$i81=$i+2;
          my$i82=$i+3;
          my$i83=$i+4;
          my$i84=$i+5;
          my$i85=$i+6;
          my$i86=$i+7;
         print OUT_1 "$str[$i]";
         print OUT_1 "$str[$i80]";
         print OUT_1 "$str[$i81]";
         print OUT_1 "$str[$i82]";
         print OUT_1 "$str[$i83]";
         print OUT_1 "$str[$i84]";
         print OUT_1 "$str[$i85]";
         print OUT_1 "$str[$i86]";
      }#if
    if($symble2[1] eq '9'){
          my$i90=$i+1;
          my$i91=$i+2;
          my$i92=$i+3;
          my$i93=$i+4;
          my$i94=$i+5;
          my$i95=$i+6;
          my$i96=$i+7;
          my$i97=$i+8;
         print OUT_1 "$str[$i]";
         print OUT_1 "$str[$i90]";
         print OUT_1 "$str[$i91]";
         print OUT_1 "$str[$i92]";
         print OUT_1 "$str[$i93]";
         print OUT_1 "$str[$i94]";
         print OUT_1 "$str[$i95]";
         print OUT_1 "$str[$i96]";
         print OUT_1 "$str[$i97]";
      }#if
    }#for
 



