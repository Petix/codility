sub solution {
    my ($N, @A)=@_;
    # write your code in Perl 5.10
    # N counters
    # A array of operations
    
    my @counters = (0) x $N;
    my $max = 0; 
    # if value in A is 1<= value <= N    ->>> increas counters[value]
    # if value in A is N+1  setAllCounters(searchMaxCounter);
    my $lastmax = 0;
    my $prevlastmax = 0;
    
    foreach my $op (@A ){

	
        if($op >= 1 and $op <=$N ){
            $op--;
            if($counters[$op] < $lastmax){
                    $counters[$op]=$lastmax;
            }
                $counters[$op]++;
        
            if($max < $counters[$op] ){
                $max = $counters[$op];
                
            }
        }elsif($op == $N +1){
           
            if($prevlastmax != $lastmax){
                $pervlastmax =$lastmax;
            }
            $lastmax = $max;

        }
        
      
    
    }
    foreach my $it (0..((@counters) - 1)){
        if($counters[$it] < $lastmax){
            $counters[$it]=$lastmax;
        }
    }
    
    return @counters;
    
}