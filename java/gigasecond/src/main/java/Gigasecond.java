import java.time.LocalDate;
import java.time.LocalDateTime;

class Gigasecond {
    private LocalDateTime gigasecond;

    Gigasecond(LocalDate birthDate) {
      this(birthDate.atTime(0, 0));
    }

    Gigasecond(LocalDateTime birthDateTime) {
      gigasecond = birthDateTime.plusSeconds(1000000000);
    }

    LocalDateTime getDate() {
      return gigasecond;
    }
}
