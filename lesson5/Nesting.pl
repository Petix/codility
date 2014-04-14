sub solution {
    my ($S)=@_;
    # write your code in Perl 5.10
    if(length $S == 0){
        return 1;
    }
    
    my @list=();
    foreach (split (//,$S)){
        # print "@list\n";
        if($_ =~/[\[\(\{]/){
            # print "push $_\n";
            push @list, $_;
        }elsif($_ =~/[\]\)\}]/){
            if(scalar @list ==0){
                return 0;
            }
            my $item = pop @list;
            # print "item $item akt $_\n";
            if($item eq '['  && $_ ne ']'){
                return 0;
            }
            if($item eq '('  && $_ ne ')'){
                return 0;
            }
            if($item eq '{'  && $_ ne '}'){
                return 0;
            }
        }
    }
    if(scalar @list != 0){
        return 0;
    }
    return 1;
}