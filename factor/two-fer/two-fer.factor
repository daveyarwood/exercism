USING: kernel formatting ;
IN: two-fer

: 2-for-1 ( recipient -- saying )
  dup "" = [ drop "you" ] when
  "One for %s, one for me." sprintf ;

