sub solution {
    my ($X, $Y, $D)=@_;
    # write your code in Perl 5.10
    my $a =int( (($Y-$X) / $D)) ;
    if($a <(($Y-$X) / $D) ){
        $a++;
    }
    $a;
}
