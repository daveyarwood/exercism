object FlattenArray {
  def flatten(x: Any): List[Int] = {
    x match {
      case null            => List()
      case n: Int          => List(n)
      case list: List[Any] => List.concat(list.map(flatten):_*)
    }
  }
}
