use common::sense;

say STDERR "Tento skript by rád vytexal soubor";

while (<>)
{
  chomp;
  # Rozdělíme slovo na tabulátorech
  my ($target, $source, $comment) = split "\t";
  say $target;
}
