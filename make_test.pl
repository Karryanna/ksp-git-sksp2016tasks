use common::sense;

say STDERR "Tento skript by rád přeložil vytexaný soubor, ale kdo slibuje, že lidi mají TeX?";

while (<>)
{
  chomp;
  say "$_: ___";
}
