object FlattenArray {
  def flatten(x: Any): List[Int] = {
    if (x == null) return List()

    x match {
      case n: Int => List(n)
      case list: List[Any] => List.concat(list.map(flatten):_*)
    }
  }
}
