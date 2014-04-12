sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    
     my @B = 1..( scalar @A +1);
    
    my %seen;
    @seen {@B} = ( );
    delete @seen {@A};
    
    my @aonly = keys %seen;
    
    return @aonly[0];
}
