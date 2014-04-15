sub solution {
    my (@A)=@_;
    # write your code in Perl 5.10
    $min=100000000000000;
    $minindex=0;

    for(my $i=0;$i<scalar @A -1;$i++){
         if( ( $A[$i]+$A[$i+1]) / 2 < $min){
            
            $min =( $A[$i]+$A[$i+1]) / 2;
            $minindex=$i;
         }
         if($i<( (scalar @A) -2)){
          if( ( $A[$i]+$A[$i+1]+$A[$i+2]) / 3 < $min){            
            $min = ( $A[$i]+$A[$i+1]+$A[$i+2]) / 3;
            $minindex=$i;
         }     
         }
         
    }
    return $minindex;
}