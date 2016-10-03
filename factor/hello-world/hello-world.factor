USING: kernel formatting ;
IN: hello-world

: hello-name ( name -- greeting )
  dup "" = [ drop "World" ] when
  "Hello, %s!" sprintf ;
