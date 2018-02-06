object Acronym {
  fun generate(phrase: String): String {
    return phrase.split(" ", "-")
                 .map { it[0].toUpperCase() }
                 .joinToString("")
  }
}
