class Gigasecond {
  constructor(fromDate) {
    this.fromDate = fromDate.valueOf() / 1000;
  }

  date() {
    let secondsSinceEpoch = this.fromDate + 1000000000;
    let toDate = new Date(0);
    toDate.setUTCSeconds(this.fromDate + 1000000000);
    return toDate;
  }
}

export default Gigasecond;
