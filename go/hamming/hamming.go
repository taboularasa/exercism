package hamming

import "fmt"

const testVersion = 4

//Distance takes two strings and returns the count of positional differences
func Distance(a, b string) (int, error) {
	aSlice := []rune(a)
	bSlice := []rune(b)
	distance := 0

	if len(aSlice) != len(bSlice) {
		return -1, fmt.Errorf("a and b must be of equal length")
	}

	for i := range aSlice {
		if aSlice[i] != bSlice[i] {
			distance++
		}
	}

	return distance, nil
}
