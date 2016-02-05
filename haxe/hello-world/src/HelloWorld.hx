class HelloWorld {
  public static function hello(name:String) {
    if (name == "") { name = "World"; }
    return 'Hello, $name!';
  }
}
