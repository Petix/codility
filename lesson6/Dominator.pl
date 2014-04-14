sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    my %map;
    my $i=0;
    my $size = scalar @A;
    foreach (@A){
        if(defined $map->{$_}){
            $map->{$_}+=1;
            if($map->{$_} > $size /2){
                return $i;
            }
        }else{
            $map->{$_}=1;
            if($map->{$_} > $size /2){
                return $i;
            }
        }
        $i++;
    }
    return -1;
}