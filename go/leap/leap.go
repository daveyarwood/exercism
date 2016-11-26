package leap

const testVersion = 2

func divisibleBy(n int, year int) bool {
	return year%n == 0
}

func IsLeapYear(year int) bool {
	return divisibleBy(400, year) ||
		(divisibleBy(4, year) && !divisibleBy(100, year))
}
