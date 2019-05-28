#perl main.pl result3.txt hg0096.txt
#model name chara_svm.txt.scale.model
#change 0_get_str.pl split()
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";
$input_file_2=$ARGV[1];
open(IN_2,"$input_file_2")
     or die "can't open the input file:$!";



if(system("perl 1.pl $input_file_1 nochange.txt change.txt")){
	print "Fatal Error : in 1_negative.pl\n";
	exit(1);
}

if(system("perl 2.pl $input_file_2 data1.txt data2.txt data3.txt data4.txt data5.txt data6.txt data7.txt ")){
	print "Fatal Error : in 3_get_posi.pl\n";
	exit(1);

}
if(system("perl 3.pl data1.txt data1_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data1_1.txt hg1.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}
if(system("perl 3.pl data2.txt data2_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data2_1.txt hg2.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}
if(system("perl 3.pl data3.txt data3_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data3_1.txt hg3.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}
if(system("perl 3.pl data4.txt data4_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data4_1.txt hg4.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);

}
if(system("perl 3.pl data5.txt data5_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data5_1.txt hg5.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);

}
if(system("perl 3.pl data6.txt data6_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data6_1.txt hg6.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);

}

if(system("perl 3.pl data7.txt data7_1.txt")){
        print "Fatal Error : in 5_chara.pl\n";
        exit(1);
}

if(system("perl 4.pl data7_1.txt hg7.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);

}


if(system("perl 7.pl hg1.txt change.txt cha1.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg2.txt change.txt cha2.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg3.txt change.txt cha3.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg4.txt change.txt cha4.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg5.txt change.txt cha5.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
}
if(system("perl 7.pl hg6.txt change.txt cha6.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg7.txt change.txt cha7.txt")){
      print "Fatal Error : in 7.pl\n";
        exit(1);
}

if(system("perl 8.pl cha1.txt r1.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha2.txt r2.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha3.txt r3.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha4.txt r4.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha5.txt r5.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha6.txt r6.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}
if(system("perl 8.pl cha7.txt r7.txt")){
      print "Fatal Error : in 8.pl\n";
        exit(1);
}

if(system("perl 9.pl r1.txt r2.txt r3.txt r4.txt r5.txt r6.txt r7.txt  isoform_5_5_0.txt")){
      print "Fatal Error : in 9.pl\n";
        exit(1);
}
`sort isoform_5_5_0.txt >isoform_5_5_1.txt`;
system("perl 10_filter.pl isoform_5_5_1.txt isoform_5_5.txt");
system("rm -f isoform_5_5_1");
system("rm -f isoform_5_5_0");
system("rm -f data7_1.txt");
system("rm -f data6_1.txt");
system("rm -f data5_1.txt");
system("rm -f data4_1.txt");
system("rm -f data3_1.txt");
system("rm -f data2_1.txt");
system("rm -f data1_1.txt");

system("rm -f cha1.txt");
system("rm -f cha2.txt");
system("rm -f cha3.txt");
system("rm -f cha4.txt");
system("rm -f cha5.txt");
system("rm -f cha6.txt");
system("rm -f cha7.txt");
system("rm -f r1.txt");
system("rm -f r2.txt");
system("rm -f r3.txt");
system("rm -f r4.txt");
system("rm -f r5.txt");
system("rm -f r6.txt");
system("rm -f r7.txt");
system("rm -f data1.txt");
system("rm -f data2.txt");
system("rm -f data3.txt");
system("rm -f data4.txt");
system("rm -f data5.txt");
system("rm -f data6.txt");
system("rm -f data7.txt");

