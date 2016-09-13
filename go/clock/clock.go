package clock

import "fmt"

const testVersion = 4

// Clock represents an hour and minutes
type Clock struct {
	h, m int
}

// New constructs a Clock
func New(hour, minute int) Clock {
	newClock := Clock{h: 0, m: 0}
	minutes := hour*60 + minute
	return newClock.Add(minutes)
}

// String implements Stringer interface
func (c Clock) String() string {
	return fmt.Sprintf("%02d:%02d", c.h, c.m)
}

// Add takes positive or negative int and mutates hours and minutes on clock
func (c Clock) Add(minutes int) Clock {
	minutes += c.m
	minutes += c.h * 60

	if minutes >= 1440 {
		minutes = minutes % 1440
	}
	if minutes < 0 {
		minutes = 1440 - ((minutes * -1) % 1440)
	}
	c.h = minutes / 60
	c.m = minutes % 60

	return c
}
