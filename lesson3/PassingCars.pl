sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10


    my $counter=0;
    my $zero=0;
    my $ones=0;
    my $flag = @A[0];
    
    foreach (@A){
    
            if($_==1){
                $counter += $zeros;
            }else{
                $zeros++;
            }
    
        if($counter > 1000000000){
            return -1;
        }
    }
    return $counter;
}