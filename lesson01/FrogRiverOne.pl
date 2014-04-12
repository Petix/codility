sub solution {
    my ($X, @A)=@_;
    # write your code in Perl 5.10
    my %set;
    my $time=0;
    my $setsize= 0;
    
    foreach my $e (@A){
        if(! defined (%set->{$e}) ){
            %set->{$e}=1;
            $setsize++;
            if($setsize == $X){
                return $time;
            }
        }
        $time++;
    }
    return -1;
}