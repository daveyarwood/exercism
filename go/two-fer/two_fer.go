package twofer

import "fmt"

func ShareWith(recipient string) string {
	if recipient == "" {
		recipient = "you"
	}

	return fmt.Sprintf("One for %s, one for me.", recipient)
}
