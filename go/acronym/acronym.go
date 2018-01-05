package acronym

import (
	"regexp"
	"strings"
)

func Abbreviate(s string) string {
	wordsRegex := regexp.MustCompile("[A-Za-z]+")
	words := wordsRegex.FindAllString(s, -1)

	acronym := ""
	for _, word := range words {
		acronym += string(word[0])
	}

	return strings.ToUpper(acronym)
}
