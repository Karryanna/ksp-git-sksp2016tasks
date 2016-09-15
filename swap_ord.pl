use common::sense;

while (<>)
{
  chomp;
  my ($first, $second, $comment) = split "\t";
  say "$second\t$first\t$comment";
}
