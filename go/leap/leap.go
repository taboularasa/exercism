// Leap stub file

package leap

// testVersion should match the targetTestVersion in the test file.
const testVersion = 2

func IsLeapYear(year int) bool {
	switch {
	case year%400 == 0:
		return true
	case year%100 == 0:
		return false
	case year%4 == 0:
		return true
	default:
		return false
	}
}
