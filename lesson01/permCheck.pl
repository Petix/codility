sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    my %set = map {$_ =>1} @A;


    # foreach my $e (keys %set){
    #     print " key $e\n";
    # }
    # foreach my $e (values %set){
    #     print " val $e\n";
    # }
    foreach my $i (1..scalar @A){
        # print "i $i   set ".%set->{$i}."\n ";
        
        if(%set->{$i} != 1 ){
               return 0;
        }
    }
    return 1;
}