#perl main.pl result3.txt
#model name chara_svm.txt.scale.model
#change 0_get_str.pl split()
#!/usr/bin/perl -wl
$input_file_1=$ARGV[0];
open(IN_1,"$input_file_1")
     or die "can't open the input file:$!";




if(system("perl 1.pl $input_file_1 nochange.txt change.txt")){
	print "Fatal Error : in 1_negative.pl\n";
	exit(1);
}




if(system("perl 7.pl hg1.txt change.txt cha1.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg2.txt change.txt cha2.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg3.txt change.txt cha3.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg4.txt change.txt cha4.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg5.txt change.txt cha5.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
}
if(system("perl 7.pl hg6.txt change.txt cha6.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
        exit(1);
  }
if(system("perl 7.pl hg7.txt change.txt cha7.txt")){
      print "Fatal Error : in 6_libsvm_format.pl\n";
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

if(system("perl 9.pl r1.txt r2.txt r3.txt r4.txt r5.txt r6.txt r7.txt  isoform_5_3_0.txt")){
      print "Fatal Error : in 9.pl\n";
        exit(1);
}
`sort isoform_5_3_0.txt >isoform_5_3_1.txt`;
system("perl 10_filter.pl isoform_5_3_1.txt isoform_5_3.txt");
system("rm -f isoform_5_3_1");
system("rm -f isoform_5_3_0");
system("rm -f hg1.txt");
system("rm -f hg2.txt");
system("rm -f hg3.txt");
system("rm -f hg4.txt");
system("rm -f hg5.txt");
system("rm -f hg6.txt");
system("rm -f hg7.txt");
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
