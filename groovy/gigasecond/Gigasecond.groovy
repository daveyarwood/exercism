import static java.util.Calendar.*

class Gigasecond {
  Date from(Date date) {
    Calendar calendar = Calendar.getInstance();
    calendar.setTime(date);
    calendar.add(SECOND, 1000000000);
    return calendar.getTime();
  }
}
