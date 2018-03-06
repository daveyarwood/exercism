import scala.annotation.tailrec

@tailrec
class Accumulate {
  def accumulate[A, B](f: (A) => B, list : List[A]): List[B] = {
    if (list.isEmpty)
      return List()
    else
      return f(list.head) :: accumulate(f, list.tail)
  }
}
