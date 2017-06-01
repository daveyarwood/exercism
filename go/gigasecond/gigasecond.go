package gigasecond

import "time"

const testVersion = 4

func AddGigasecond(t time.Time) time.Time {
	gigasecond := time.Duration(1000000000) * time.Second
	return t.Add(gigasecond)
}
