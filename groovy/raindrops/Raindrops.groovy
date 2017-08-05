class Raindrops {
  def rules = [[3, 'Pling'], [5, 'Plang'], [7, 'Plong']]

  String convert(int n) {
    String drops = rules.inject("") { acc, pair ->
      n % pair[0] == 0 ? acc + pair[1] : acc
    }

    drops == "" ? n : drops
  }
}
