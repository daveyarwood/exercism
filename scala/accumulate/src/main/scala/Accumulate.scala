import scala.annotation.tailrec

@tailrec
class Accumulate {
  def accumulate[A, B](f: (A) => B, list : List[A]): List[B] = {
    list match {
      case List()  => List()
      case x :: xs => f(x) :: accumulate(f, xs)
    }
  }
}
