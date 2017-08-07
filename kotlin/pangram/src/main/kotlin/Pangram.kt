object Pangrams {
  fun isPangram(str: String): Boolean {
    val thisString = str.toLowerCase().toSet()
    val lowercaseLetters = ('a'..'z').toSet()
    return thisString.containsAll(lowercaseLetters)
  }
}
