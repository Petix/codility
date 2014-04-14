sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    %key = map {$_ =>1} @A;
    return scalar (keys %key);
}