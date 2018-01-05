package acronym

import (
	"bytes"
	"regexp"
	"strings"
)

func Abbreviate(s string) string {
	acronym := bytes.NewBufferString("")

	wordsRegex := regexp.MustCompile("[A-Za-z]+")
	words := wordsRegex.FindAllString(s, -1)

	for _, word := range words {
		acronym.WriteByte(word[0])
	}

	return strings.ToUpper(acronym.String())
}
