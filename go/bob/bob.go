package bob

import "strings"

func trimWhitespace(s string) string {
	return strings.Trim(s, " \t\n\r")
}

func shouting(remark string) bool {
	return strings.ContainsAny(remark, "ABCDEFGHIJKLMNOPQRSTUVWXYZ") &&
		!strings.ContainsAny(remark, "abcdefghijklmnopqrstuvwxyz")
}

func asking(remark string) bool {
	return strings.HasSuffix(trimWhitespace(remark), "?")
}

func silence(remark string) bool {
	return trimWhitespace(remark) == ""
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
