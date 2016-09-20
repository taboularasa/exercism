package raindrops

import "fmt"

const testVersion = 2

// Convert a number to a string that depends on the numbers factors
func Convert(number int) string {
	var result = ""

	if number%3 == 0 {
		result += "Pling"
	}
	if number%5 == 0 {
		result += "Plang"
	}
	if number%7 == 0 {
		result += "Plong"
	}
	if result == "" {
		result = fmt.Sprint(number)
	}

	return result
}
