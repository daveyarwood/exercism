package bob

import "strings"

func shouting(remark string) bool {
	return strings.ContainsAny(remark, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") &&
		!strings.ContainsAny(remark, "abcdefghijklmnopqrstuvwxyz")
}

func asking(remark string) bool {
	return strings.HasSuffix(strings.TrimSpace(remark), "?")
}

func silence(remark string) bool {
	return strings.TrimSpace(remark) == ""
}

func Hey(remark string) string {
	if shouting(remark) && asking(remark) {
		return "Calm down, I know what I'm doing!"
	} else if shouting(remark) {
		return "Whoa, chill out!"
	} else if asking(remark) {
		return "Sure."
	} else if silence(remark) {
		return "Fine. Be that way!"
	} else {
		return "Whatever."
	}
}
