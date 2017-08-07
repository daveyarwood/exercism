object Pangrams {
  const val ALPHABET: String = "abcdefghijklmnopqrstuvwxyz"

  fun isPangram(str: String): Boolean {
    return ALPHABET.all { str.toLowerCase().contains(it) }
  }
}
