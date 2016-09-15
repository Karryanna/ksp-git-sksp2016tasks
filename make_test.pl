use common::sense;

say STDERR "Tento skript by rád přeložil vytexaný soubor, ale kdo slibuje, že lidi mají TeX?";

my $out = $ARGV[0];
$out =~ s/\.draft/.tets/;
open (my $infile, "<", $ARGV[0]) or die("Nemůžu otevřít vstupní soubor");
open (my $outfile, ">", $out) or die("Nemůžu otevřít výstupní soubor");
while (<$infile>)
{
  chomp;
  # Zadané slovíčko vypisujeme i s prostorem na cizojazyčnou verzi
  say $outfile "$_: ___";
}
close ($infile);
close ($outfile);
