object Pangrams {
  val ALPHABET = CharRange('a', 'z')

  fun isPangram(str: String): Boolean {
    return ALPHABET.all { str.toLowerCase().contains(it) }
  }
}
