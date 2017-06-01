package gigasecond

import "time"

const testVersion = 4

const GIGASECOND = time.Duration(1000000000 * time.Second)

func AddGigasecond(t time.Time) time.Time {
	return t.Add(GIGASECOND)
}
