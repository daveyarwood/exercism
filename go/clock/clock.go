package clock

import "fmt"

const testVersion = 4

type Clock int

const MINUTES_IN_A_DAY = 60 * 24

func New(hour, minute int) Clock {
	minutes := (hour * 60) + minute

	for minutes < 0 {
		minutes += MINUTES_IN_A_DAY
	}

	for minutes >= MINUTES_IN_A_DAY {
		minutes -= MINUTES_IN_A_DAY
	}

	return Clock(minutes)
}

func (c Clock) String() string {
	hour := (int(c) / 60) % 24
	minute := int(c) % 60

	return fmt.Sprintf("%0.2d:%0.2d", hour, minute)
}

func (c Clock) Add(minutes int) Clock {
	return New(0, int(c)+minutes)
}
