package bob // package name must match the package name in bob_test.go
import (
	"strconv"
	"strings"
)

const testVersion = 2 // same as targetTestVersion

// Hey returns a sassy string dispached by an input string
func Hey(input string) string {
	if strings.ToUpper(input) == input {
		t := strings.Split(input, ",")
		for _, i := range t {
			_, err := strconv.Atoi(i)
			if err != nil {
				return "Whatever."
			}
		}

		return "Whoa, chill out!"
	}

	if strings.HasSuffix(input, "?") {
		return "Sure."
	}

	return "Whatever."
}
