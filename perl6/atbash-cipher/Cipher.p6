unit module cipher;

constant LOWERCASE = "abcdefghijklmnopqrstuvwxyz";
constant UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

constant FROM = (LOWERCASE ~ UPPERCASE);
constant TO = (flip LOWERCASE) ~ (flip LOWERCASE);
constant BACK = (LOWERCASE ~ LOWERCASE);

sub mash_together($str) {
  $_ = $str;
  s:g/<-[ a..z A..Z 0..9]>//;
  return $_;
}

sub group_by_fives($str) {
  return mash_together($str).comb.rotor(5, :partial).map({.join('')}).join(' ');
}

sub encode($str) is export {
  return group_by_fives($str.trans(FROM.split('') => TO.split('')));
}

sub decode($str) is export {
  return mash_together($str.trans(TO.split('') => BACK.split('')));
}
