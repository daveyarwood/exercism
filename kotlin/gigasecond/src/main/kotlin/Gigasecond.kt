import java.time.LocalDate
import java.time.LocalDateTime
import java.time.Month

class Gigasecond(val fromDateTime: LocalDateTime) {
  constructor(fromDate: LocalDate): this(fromDate.atTime(0, 0))
  val date = fromDateTime.plusSeconds(1000000000)
}
