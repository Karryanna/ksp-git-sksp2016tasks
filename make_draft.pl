use common::sense;

say STDERR "Tento skript by rád vytexal soubor";

my $out = $ARGV[0];
$out =~ s/\.chosen/.dratf/;
open (my $infile, "<", $ARGV[0]) or die("Nemůžu otevřít vstupní soubor");
open (my $outfile, ">", $out) or die("Nemůžu otevřít výstupní soubor");
while (<$infile>)
{
  chomp;
  # Rozdělíme slovo na tabulátorech
  my ($target, $source, $comment) = split "\t";
  say $outfile $target;
}
close ($infile);
close ($outfile);
