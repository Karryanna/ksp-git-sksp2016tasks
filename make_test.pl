use common::sense;

say STDERR "Tento skript by rád přeložil vytexaný soubor, ale kdo slibuje, že lidi mají TeX?";

open (my $infile, "<", $ARGV[0]) or die("Nemůžu otevřít vstupní soubor");
open (my $outfile, ">", $ARGV[1]) or die("Nemůžu otevřít výstupní soubor");
while (<$infile>)
{
  chomp;
  # Zadané slovíčko vypisujeme i s prostorem na cizojazyčnou verzi
  say $outfile "$_: ___";
}
close ($infile);
close ($outfile);
