package clock

import "fmt"

const testVersion = 4

type Clock int

const minutesInADay = 60 * 24

func New(hour, minute int) Clock {
	minutes := (hour * 60) + minute

	for minutes < 0 {
		minutes += minutesInADay
	}

	for minutes >= minutesInADay {
		minutes -= minutesInADay
	}

	return Clock(minutes)
}

func (c Clock) String() string {
	hour := (int(c) / 60) % 24
	minute := int(c) % 60

	return fmt.Sprintf("%02d:%02d", hour, minute)
}

func (c Clock) Add(minutes int) Clock {
	return New(0, int(c)+minutes)
}
