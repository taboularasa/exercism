package gigasecond

import (
	"math"
	"time"
)

// Constant declaration.
const testVersion = 4 // find the value in gigasecond_test.go

// AddGigasecond adds one Gigasecond to the passed in time
func AddGigasecond(input time.Time) time.Time {
	var oneGigasecond = time.Duration(math.Pow(10, 9)) * time.Second
	return input.Add(oneGigasecond)
}
