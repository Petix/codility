#
# not clearly defined task...
# the integers are unique in the array... !!!
#
sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    my ($m1,$m2,$m3)=(-2000) x 3;
    my ($a,$b,$c)=(2000) x 3;
    if(scalar @A == 3){
        return $A[0]*$A[1]*$A[2];
    }
    
    foreach(@A){
            if($_ >= $m3){
                #the bigest
                $m1=$m2;
                $m2=$m3;
                $m3=$_;
            }elsif($_>=$m2){
                $m1=$m2;
                $m2=$_;
            }elsif($_>=$m1){
                $m1=$_;
            }
            if($_ <= $a){
                #the smallest
                $c=$b;
                $b=$a;
                $a=$_;
            }elsif($_<=$b){
                $c=$b;
                $b=$_;
            }elsif($_<=$c){
                $c=$_;
            }
    }

    $m1 = $m1==-2000? undef : $m1;
    $m2 = $m2==-2000? undef : $m2;
    $m3 = $m3==-2000? undef : $m3;
    
    $a = $a==2000? undef : $a;
    $b = $b==2000? undef : $b;
    $c = $c==2000? undef : $c;

    my @ar = ($a,$b,$c,$m1,$m2,$m3);
    my $q = $m2*$m3*$m1 ;
    my $w = $a*$b*$m3;
    
    return $q>$w?$q:$w;

}