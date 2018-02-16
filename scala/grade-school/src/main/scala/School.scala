import scala.collection.mutable.SortedMap

class School {
  type Name = String
  type Grade = Int
  type DB = Map[Grade, Seq[Name]]

  private var _db: SortedMap[Grade, Seq[Name]] = SortedMap()

  def db: DB = _db.toMap

  def sorted: DB = db.mapValues(_.sorted)

  def grade(g: Grade): Seq[Name] = db.getOrElse(g, Seq())

  def add(name: Name, g: Grade) = _db.put(g, grade(g) :+ name)
}
