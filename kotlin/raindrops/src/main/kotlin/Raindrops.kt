typealias Rule = Pair<Int, String>

val RULES: List<Rule> = listOf(Pair(3, "Pling"),
                               Pair(5, "Plang"),
                               Pair(7, "Plong"))

private fun ruleSound(n: Int, rule: Rule): String {
  val (factor, sound) = rule
  return if (n % factor == 0) { sound } else { "" }
}

object Raindrops {
  fun convert(n: Int): String {
    return RULES.fold("") { sounds, rule -> sounds + ruleSound(n, rule) }.let {
      if (it.isBlank()) { n.toString() } else { it }
    }
  }
}
