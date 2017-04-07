class Gigasecond {
  Date from(Date date) {
    use (groovy.time.TimeCategory) {
      return date + 1000000000.seconds;
    }
  }
}
