package main

import (
    "fmt"
    "regexp"
)

func findMatchingSubstrings(s string) []string {
    // –егул€рное выражение дл€ соответстви€ шаблону 1[0]1, где [0] обозначает один или более нулей
    pattern := regexp.MustCompile("10+1")
    // Ќайти все совпадени€ шаблона в строке
    matches := pattern.FindAllString(s, -1)
    return matches
}

func main() {
    // ѕример строки из задачи
    exampleStr := "101tf11flb10001"
    // Ќайти и вывести все совпадающие подстроки
    matchingSubstrings := findMatchingSubstrings(exampleStr)
    fmt.Println(matchingSubstrings)
}
