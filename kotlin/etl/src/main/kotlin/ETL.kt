object ETL {
  fun transform(scores: Map<Int, List<Char>>): Map<Char, Int> {
    return scores.asIterable().fold(mapOf()) {
      acc: Map<Char, Int>, (score: Int, tiles: List<Char>) ->
      tiles.fold(acc) { acc: Map<Char, Int>, tile: Char ->
        acc + Pair(tile.toLowerCase(), score)
      }
    }
  }
}
