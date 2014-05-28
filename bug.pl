$frase = 'I AM A BUG PROGRAM' ;

sub rearrange {
@frase_inalt = split('',$frase);
$r1 = 0 ; $r2 = 0 ;
until ($r1 != $r2 
		and @frase_inalt[$r1] ne ' '
		and @frase_inalt[$r2] ne ' '
		and @frase_inalt[$r1] ne @frase_inalt[$r2]) {
	$r1 = int( rand($#frase_inalt-1)) ;
	$r2 = int( rand($#frase_inalt-1)) ;
	}
@frase_alt = @frase_inalt ; @frase_alt[$r1] = @frase_inalt[$r2] ; @frase_alt[$r2] = @frase_inalt[$r1] ;
print "\n\n\t\t" ; print join('', @frase_alt) ;
print " !\n\n" ;
print "\t\tPress \'f\' key to try and fix me\n" ;
print "\t\tor press any other key to give up\n\t\t" ;
chomp ($resp = <STDIN>) ;
return $resp ;
}

$resp = 'f' ;
while ( $resp eq 'f' ) {
	rearrange() ;
	}

